%% LAB 1 - PART 3
% Implement Pure Pursuit

clc
clear
close all

%%

% Connect to RC
RC = RCCar();

resetMap(RC) % Resets localization to (x: 0, y: 0, phi: 0)

% Create a loop that controls the car at some fixed rate
% Run until you reach your waypoint

% x = RC.X
% y = RC.Y
% phi = RC.Phi

% RC.setSpeed(0.25)
% RC.setSteeringAngle(gamma)
