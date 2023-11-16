%% LAB 1 - PART 1
% Maintain a fixed distance from the wall by implementing a PD controller

clc
clear
close all

%%

% Connect to RC
RC = RCCar();

% Params
desiredDistance = 0.5; % m
duration = 10.0; % s
frequency = 20.0; % Hz

% Control loop
tic
while (toc < duration)

    % Get control steering angle
    steeringAngle = WallFollowerControlFcn(RC, desiredDistance);

    % Send steering angle command
    RC.setSteeringAngle(steeringAngle);

    % Send speed command (DO NOT CHANGE)
    RC.setSpeed(0.5);
    
    % Maintain fixed frequency
    pause(1/frequency);
end

% Plot results
figure()

subplot(1, 2, 1)
plot(RC.DataLog1, RC.DataLog2)
xlabel("Time (s)")
ylabel("Distance Error (m)")

subplot(1, 2, 2)
plot(RC.DataLog1, RC.DataLog3)
xlabel("Time (s)")
ylabel("Steering Angle (rad)")

sgtitle("RC Lab 1 Results")
