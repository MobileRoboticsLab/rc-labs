function Lab1ControlFcn(RC)
% Goal: Keep the RC a fixed distance (desiredDistance) from the wall by
% implementing a PD controller

desiredDistance = 0.5; % m

%% CODE IN THIS SECTION


% PD Controller Gains
KP = 0; % UPDATE THIS
KD = 0; % UPDATE THIS


% Hint: `persistent` variables keep their values between function calls.
% They can be used to keep track of changes over time.
persistent lastTime


% Hint: Use datetime('now') to get the current time.
currentTime = datetime('now'); % DO NOT RENAME


% Hint: Use seconds(deltaTime) to convert from time to double


% Hint: Use 'distance = getDistanceToRightWall(RC)' or
% 'distance = getDistanceToLeftWall(RC)' to get the distances to the wall
% on either side of the vehicle (in meters)


distanceError = ; % UPDATE THIS VARIABLE (DO NOT RENAME)


% Hint: What should the function do the first time its called, when your
% persistent variables haven't been set yet?
% You can use 'isempty(var)' to check if a variable is initialized or not


steeringAngle = ; % UPDATE THIS VARIABLE (DO NOT RENAME)


% Set the steering angle for the remote controlled vehicle
setSteeringAngle(RC, steeringAngle);

% Set a constant speed for the remote controlled vehicle
setSpeed(RC, 0.5); % constant speed

% Hint: Make sure to update your persistent variables


%% DO NOT EDIT BELOW

% Store error data for analysis
try
    if isempty(RC.DataLog1)
        RC.DataLog1 = 0;
    else
        RC.DataLog1 = [RC.DataLog1; RC.DataLog1(end) + deltaTime];
    end
    RC.DataLog2 = [RC.DataLog2; distanceError];
    RC.DataLog3 = [RC.DataLog3; steeringAngle];
catch
    fprintf("Error logging RC data. Make sure all the variables exist.\n")
end

end