%% LAB 1 - PART 2
% Find the mapping from steering angle to turn radius

clc
clear
close all
%%

% Initialize RC connection
RC = RCCar();

% Params
duration = 10.0; % seconds
frequency = 5; % hertz
speed = 0.25; % m/s

% Constant turn radius
% Trying to match the desired turn radius with the actual measured result
desiredTurnRadius = 0.5; % m
steeringAngle = getSteeringAngle(desiredTurnRadius)

tic % Start timer
while (toc < duration)

    % Constant speed
    RC.setSpeed(speed)

    % Set the steering angle
    RC.setSteeringAngle(steeringAngle)

    % Maintain fixed frequency
    pause(1/frequency)
end