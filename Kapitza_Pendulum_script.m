clc
clear all
close all

g = 9.81;      % Acceleration due to gravity (m/s^2)
l = 1;         % Length of the pendulum (m)
m = 1;         % Mass of the pendulum bob (kg)
a = 1;         % Coefficient related to forcing function
b = 0.5;       % Coefficient related to damping
A = 0.1;       % Amplitude of forcing function
omega = 3*pi;  % Frequency of forcing function

time = [0 : .01: 100];
theta0 = pi/4;           % Initial angle (rad)
theta_dot0 = 0;          % Initial angular velocity (rad/s)
initialConditions = [theta0; theta_dot0];

% Using the ODE45 solver to numerically solve a differential equation
% and simulate the behavior of a Kapitza Pendulum

% Define the differential equation function , which takes
% parameters (t, x, g, l, m, a, b, A, omega)
[t, x] = ode45(@(t, x) Kapitza_Pendulum(t, x, g, l, m, a, b, A, omega), time, initialConditions);

plot(t, x(:,  1)*180/pi)
xlabel('Time')
ylabel('Angle')
title('Pendulum Angle')


