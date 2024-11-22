%% LAB 2
% Implement RRT from a saved map

% 1. Use the 'StartRCKeyboardWMap' command to drive the robot around an 
% obstacle course and see the map

% 2. Use 'RC.saveMap()' afterwards to save the map data to a file. Copy the
% file to this directory

clc
clear
close all
%%

load('OccupancyGridSave.mat')

% Use the show() function to plot your map
show(saved_map)
% You can use axis([xmin xmax ymin ymax]) to zoom in on a specific region

% Use the checkOccupancy() function to check the occupancy at some position
check_x = 0; % m
check_y = 0; % m
val = checkOccupancy(saved_map, [check_x check_y]); % < 0.5 for empty, > 0.5 for occupied

% Use the inflate() function to inflate the obstacles
inflate_size = 0.1; % m
inflate(saved_map, inflate_size)

% Set your start and goal positions
start_position = [0 0];
goal_position = [5; 1];

% Perform RRT search

% Plot your results on the saved map