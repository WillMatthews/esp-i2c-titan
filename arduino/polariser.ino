#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Wire.h>

const byte PIN_DEBUG = 16;
const byte PIN_CLOCK = 4;
const byte PIN_DATA = 5;

const byte dev = 0x28; // this is actually a 7 bit I2C address but a byte works fine (despite compile warns)

void setup() {
  WiFi.mode(WIFI_OFF);
  WiFi.forceSleepBegin();
  pinMode(PIN_DEBUG, OUTPUT);
  Wire.begin();
  Serial.begin(9600);
}

void loop() {
  unsigned int totalsteps = 0xFFFF; //65535 steps per revolution -> 0.005493248 deg per step.
                                    // 1 degree ~ 182 counts.
  digitalWrite(PIN_DEBUG,HIGH);

  
  if (Serial.available()){
    String command = Serial.readStringUntil('\n');


    // QRY ANGLE
    if (command.equals(":MEAS:ANGLE")) {
      //0x04 current location
      Wire.beginTransmission(dev); // transmit to device #28 (jumper on pin 2-3)
      Wire.write(0x04);            // sends two bytes
      Wire.endTransmission();      // stop transmitting
      
      Wire.requestFrom(dev,2);
      int i = 0;
      unsigned int high_byte = 0;
      unsigned int low_byte = 0;
      
      while(Wire.available())    // motor may send fewer or more than requested
      { 
        unsigned int c = Wire.read();    // receive a byte as a uint
        if (i == 0){
          high_byte = c;  // first byte is MSB
        } else {
          low_byte = c;   // second byte is LSB
        }
          i++;
      }
      
      unsigned int angle_at = ((unsigned int)high_byte << 8) + low_byte; // combine LSB and MSB
      float angle_atdeg = 360.0 * float(angle_at) / float(totalsteps);   // convert from steps to degrees

      // round to 4dp    
      char str_out[7];
      dtostrf(angle_atdeg,3,4,str_out);

      // output as qry response
      Serial.write(str_out);
      Serial.write("\n");






    // QRY IS MOTOR MOVING
    } else if (command.equals(":MEAS:MOVE")) {

     //0x03 Is Motor Moving?
      Wire.beginTransmission(dev); // transmit to device #28 (pin 2-3)
      Wire.write(0x03);            // sends a byte (request for IS MOTOR MOVING)
      Wire.endTransmission();      // stop transmitting
      
      Wire.requestFrom(dev,1);     // request one byte
      
      int i = 0;
      unsigned int state_byte = 0;
      while(Wire.available())    // motor may send fewer or more than requested
      { 
        unsigned int c = Wire.read();    // receive the first byte as a uint
        if (i == 0){
          state_byte = c;
        }
          i++;
      }

      // output qry response
      if (state_byte == 0xFF || state_byte == 0x01){
        Serial.write("1"); // motor is moving
      } else if (state_byte == 0x00) {
        Serial.write("0"); // motor is stationary
      } else {
        Serial.write("E"); // error
      }
      Serial.write("\n");



    // if not a query we are seeing an angle goto request.
    } else {
      float degrees = command.toFloat();
    
      unsigned int out = round(totalsteps * degrees/360); // convert degrees request to motor steps
      // range 0x0000-0xFFFF
      byte data0 = highByte(out);  // data0 MSB
      byte data1 = lowByte(out);   // data1 LSB
    
      // ADDR 0x28, 0x50 LEFT SHIFT
      Wire.beginTransmission(dev); // transmit to device #28 (pin 2-3 on jumper)
        
      Wire.write(0x05);            // sends one byte (0x05 -> goto absolute location)
      Wire.write(data0);           // sends one byte  
      Wire.write(data1);           // sends one byte
      Wire.endTransmission();      // stop transmitting
      }
  }
}
