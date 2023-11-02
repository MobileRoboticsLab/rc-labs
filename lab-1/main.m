%% LAB 1
% Maintain a fixed distance from the wall by implementing a PD controller

clc
CLEAR

%%

RC = RCCar();
control = RCControl(RC, @WallFollowerControlFcn, 10);
display = RCDisplay(RC, 1, 2, ...
    {@(rc, disp, plt) displayDataLog(rc, disp, plt, 1, 2), ...
    @(rc, disp, plt) displayDataLog(rc, disp, plt, 1, 3)}, ...
    {});

pause(3.0);

display.open();
control.start();

pause(10.0);

control.stop();
