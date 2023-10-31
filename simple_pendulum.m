% Define a function to compute the derivatives of the simple pendulum state
function [xdot] = simple_pendulum(t, x, l, g)
% Inputs:
% - t: Current time
% - x: Current state vector [angle (x1), angular velocity (x2)]
% - l: Length of the pendulum
% - g: Acceleration due to gravity

% Extract the current values of angle (x1) and angular velocity (x2) from the state vector
x1 = x(1); % Angle
x2 = x(2); % Angular velocity

% Calculate the derivatives of angle (x1) and angular velocity (x2) based on the simple pendulum equations of motion
x1dot = x2;                      % The rate of change of angle is the current angular velocity
x2dot = -(g / l) * sin(x1);       % The rate of change of angular velocity is determined by gravity and the sine of the angle

% Create a vector xdot that stores the computed derivatives
xdot = [x1dot; x2dot];

% The function returns xdot, which contains the derivatives of the state variables
% These derivatives are used by the ODE solver to integrate the pendulum's motion
end
