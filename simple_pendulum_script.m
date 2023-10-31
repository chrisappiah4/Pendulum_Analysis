clc
clear all
close all



% Define the length of the pendulum and acceleration due to gravity
l = 1;   % Length of the pendulum
g = 10;  % Acceleration due to gravity 

% Define the time span for simulation
time = [0 10]; % Time span from 0 to 10 seconds 

% Define the initial conditions for the simple pendulum
x0 = [pi/6; 0]; % Initial angle (in radians) and initial angular velocity (rad/s)
% x0 = [initial angle; initial angular velocity]

% Use the ode45 solver to simulate the simple pendulum motion
[t, x] = ode45(@(t, x) simple_pendulum(t, x, l, g), time, x0);
% The ode45 solver integrates the differential equations of the simple pendulum
% The function describes the equations of motion

plot(t, x(:, 2), 'r', 'LineWidth', 2); 
hold off; 

xlabel('Time (s)'); 
ylabel('Angle (rad) / Angular Velocity (rad/s)'); 
legend('Angle (\theta)', 'Angular Velocity (\theta dot)'); 
title('Simple Pendulum Motion'); 
grid on
