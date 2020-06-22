function [] = polariser_goto(angle)
%POLARISER_GOTO makes the overview titan motor goto a set angle in degrees.

cal = open("PolariserCal.mat");
% Find a serial port object.
obj1 = instrfind('Type', 'serial', 'Port', '/dev/ttyUSB0', 'Tag', '');

% Create the serial port object if it does not exist
% otherwise use the object that was found. 
if isempty(obj1)
    obj1 = serial('/dev/ttyUSB0');
else
    fclose(obj1);
    obj1 = obj1(1);
end

% Connect to instrument object, obj1.
fopen(obj1);

%% Instrument Configuration and Control

% Communicating with instrument object, obj1.
command = num2str((angle-cal.phase_offset));
pause(0.05);
fprintf(obj1, command);

wait = true;
while (wait)
    pause(0.01);
    data1 = query(obj1, ':MEAS:MOVE');
    %data2 = str2num(query(obj1, ':MEAS:ANGLE'));
    %fprintf("Motor at %3.3f degrees\n", data2+cal.phase_offset);
    if (str2num(data1) == 0)
        wait = false;
    end
end


%% Disconnect and Clean Up
pause(0.01);
% Disconnect from instrument object, obj1.
fclose(obj1);


end

