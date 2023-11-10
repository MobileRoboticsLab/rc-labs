%% LAB 1 - PART 2
% Find the mapping from steering angle (gamma) to radius of curvature (r)

clc
clear
close all

ConnectToROS % Connect to ROS network
%%

% Connect to RC
RC = RCCar();

% Steering angle
gamma = 0;  % in the range -0.25 to 0.25

% Params
T = 10; % s
f = 10; % Hz
v = 0.25; % m/s

% Control loop
tic
while (toc < T)

    RC.setSpeed(v)
    RC.setSteeringAngle(gamma)

    pause(1/f)
end

% omega = v / r

DisconnectFromROS % Disconnect from ROS network

