%% LAB 1 - PART 3
% Implement pure pursuit on the RC car

clc
clear
close all
%%

% Initialize RC connection
RC = RCCar();

% Params
duration = 10.0; % seconds
frequency = 5; % hertz

% Waypoint
waypoint_x = -0.5;
waypoint_y = -0.75;

tic % Start timer
while (toc < duration)

    % Get current robot position
    x = RC.X;
    y = RC.Y;
    phi = RC.Phi;

    %% IMPLEMENT PURE PURSUIT HERE

    % Calculate speed of RC car
    speed = ;

    % Calculate turn radius
    turn_radius = ;

    % Calculate steering angle
    % Copy getSteeringAngle() function from previous lab
    steering_angle = getSteeringAngle(turn_radius);

    %% 

    % Set the speed
    RC.setSpeed(speed)

    % Set the steering angle
    RC.setSteeringAngle(steeringAngle)

    % Maintain fixed frequency
    pause(1/frequency)
end