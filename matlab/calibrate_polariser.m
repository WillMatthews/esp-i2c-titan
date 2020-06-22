%Malus's law is  I = I0*cos(angle)^2;
I0 = 37;
Is = [];
angs = [];
demo_offset = 1;
phase_offset = 0;

%% do a calibration run
tic;
save("PolariserCal.mat","phase_offset");
fprintf("Calibrating... This takes approximately six minutes\n");
for motor_ang = 0:1:180
    fprintf("%3.2f\n", motor_ang);
    %polariser_goto(motor_ang);
    % read the photocurrent
    polariser_angle = motor_ang + demo_offset;
    I = I0*(cosd(polariser_angle)^2); % replace this simulation code
    I = I./(I/10 + 0.1); % simulate saturation
    
    Is = [Is, I];
    angs = [angs, motor_ang];
end
runtime = toc;
% Response-dependent Gaussian noise
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
