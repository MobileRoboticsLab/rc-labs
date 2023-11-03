clc
clear
close all
CLEAR
%%

RC = RCCar();

x = 0;  % in the range -0.25 to 0.25
numSeconds = 10; % Number of seconds to run the car
tic
while (numSeconds - toc > 0)
    RC.setSpeed(0.25)
    RC.setSteeringAngle(x);
    pause(0.05);
end

