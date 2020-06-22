clear all; close all; clc

target = 1E-3; % target BER to achieve

lb = 0.95; % lower bound multiplier of target BER
ub = 1.05; % upper bound multiplier of target BER

%I = I0*cosd(angle)^2; % recall Malus's law

cal = open("PolariserCal.mat");

%% need ber-intensity-datarate graph...
% assume it's log(I) shape;

ber = 1; pang = 45; %% goto middle of range
Is = []; pangs = []; bers = []; %% initialise 'state' storage
anglestep = 1.2*(45/2); %% give binsearch a bit more headroom for noise
iter = 1;
while ~((target*lb < ber) && (ber < target*ub))
    polariser_goto(pang);
    if iter > 13
        break;  % polariser angle resolution limit
    end
    
    %% generate fake BER... REPLACE ME WITH A "GET BER" code
    fprintf("going to %3.4f degrees, step size %3.4f\n", pang, anglestep);
    I = cal.I0_est*(cosd(pang)^2);
    ber = 10*exp(-I); % simulate ber performance
    ber = ber + 0.2*ber.*randn(); % add noise

    if ber > 0.5
        ber = 0.5;
    elseif ber < 0
        ber = 0;
    end
    
    %% store state for analysis
    Is = [Is, I];
    pangs = [pangs, pang];
    bers = [bers, ber];
    iter = iter+1;
    
    %% generate next angle step (binary search)
    if ber > target
        pang = pang-anglestep;
    else
        pang = pang+anglestep;
    end

    if pang > 90
        pang = 90;
    elseif pang < 0
        pang = 0;
    end

    anglestep = anglestep/2;
end



if ~((target*lb < ber) && (ber < target*ub))
    warning("At Resolution Limit - BER target not achieved");
end
