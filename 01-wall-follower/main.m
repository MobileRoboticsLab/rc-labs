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
totalTimeSteps = duration * frequency;
speed = 0.5; % m/s

% Variable histories
currentTime_History = nan(1, totalTimeSteps);
distanceError_History = nan(1, totalTimeSteps);
steeringAngle_History = nan(1, totalTimeSteps);

% Keep track of last error and time to calculate rate of change
lastDistanceError = 0;
startTime = datetime("now");
lastTime = startTime;
pause(0.25)

% Control loop
for k = 1:totalTimeSteps

    % Get the current time
    currentTime = datetime('now');

    % Calculate the time difference from the last function call
    deltaTime = seconds(currentTime - lastTime); % s

    % Obtain the current distance to the right wall
    currentDistance = getDistanceToRightWall(RC); % m

    %% FIX THIS SECTION

    KP = 0.5; % UPDATE THIS
    KD = 0.5; % UPDATE THIS

    % Calculate the error in distance
    distanceError = ; % m

    % Calculate the change in distance error since last iteration
    % Use the 'lastDistanceError' variable in your calculation
    deltaDistanceError = ; % m

    % Rate of change of error with respect to time
    rateOfChangeError = ; % m/s

    % Calculate the steering angle using PD control law
    steeringAngle = ;

    %%

    % Update tracking variables
    lastDistanceError = distanceError;
    lastTime = currentTime;

    % Send steering angle command
    RC.setSteeringAngle(steeringAngle);

    % Send speed command
    RC.setSpeed(speed); % constant

    % Add variables to history
    currentTime_History(k) = seconds(currentTime - startTime);
    distanceError_History(k) = distanceError;
    steeringAngle_History(k) = steeringAngle;

     % Display the current information for debugging or monitoring
    fprintf("Distance Error = %.3f m\n", distanceError);
    fprintf("Rate of Change of Error = %.3f m/s\n", rateOfChangeError);
    fprintf("Steering Angle: %.4f rad\n", steeringAngle);
    
    % Maintain fixed frequency
    pause(1/frequency);
end

% Plot results
figure()

subplot(1, 2, 1)
plot(currentTime_History, distanceError_History)
xlabel("Time (s)")
ylabel("Distance Error (m)")

subplot(1, 2, 2)
plot(currentTime_History, steeringAngle_History)
xlabel("Time (s)")
ylabel("Steering Angle (rad)")

sgtitle("RC Wall Follower Results")
