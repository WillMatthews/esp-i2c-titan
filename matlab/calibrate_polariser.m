clear all; close all; clc;

%Malus's law is  I = I0*cos(angle)^2;
Is = []; angs = [];
prevlinenum = 0;
phase_offset = 0;

I0 = 37; % used for simulation
fake_offset = 1; % used for simulation

%% do a calibration run
tic;
save("PolariserCal.mat","phase_offset");
fprintf("Calibrating... This takes approximately six minutes\n");
for motor_ang = 0:1:180
    
    %% show percentage completion
    fprintf(repmat('\b', 1, prevlinenum));
    pause(0);
    fprintf("%3.2f%%", 100*motor_ang/180);
    prevlinenum = strlength(sprintf("%3.2f%%", 100*motor_ang/180));
    polariser_goto(motor_ang);
    
    %% read the photocurrent... REPLACE ME WITH METER ACQUISITION CODE
    fake_polariser_angle = motor_ang + fake_offset;
    I = I0*(cosd(fake_polariser_angle)^2); % replace this simulation code
    I = I./(I/10 + 0.1); % simulate saturation
    
    %% store state for analysis
    Is = [Is, I];
    angs = [angs, motor_ang];
end
runtime = toc;

%% Response-dependent Gaussian noise.. REMOVE ME WHEN USING IN RIG
gnoise = Is.*randn(size(Is));

%% initial fit CHANGE FIT TYPE FOR APPLICATION
f = fittype('a*(cosd(x+b)^2)/(c*cosd(x+b)^2 + 1)'); 
[fit1,gof,fitinfo] = fit(angs',Is',f,'StartPoint',[1 1 1]);

plot(angs,Is); hold on;
plot(fit1);

I0_est = fit1.a;
phase_offset = fit1.b;

save("PolariserCal.mat","I0_est","phase_offset","fit1","angs","Is");
polariser_goto(phase_offset);
fprintf("\n");
