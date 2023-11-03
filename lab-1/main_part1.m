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
display.close();

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
