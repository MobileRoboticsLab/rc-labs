%% LAB 1 - PART 3
% Implement Pure Pursuit

clc
CLEAR

%%

RC = RCCar();
control = RCControl(RC, @PurePursuitControlFcn, 10);

pause(3.0);

control.start();

num_seconds = 10;
pause(num_seconds);

control.stop();
