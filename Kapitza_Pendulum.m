function xdot = Kapitza_Pendulum(t, x, g, l, m, a, b, A, omega)
    % Extract the angle (theta) and angular velocity (theta_dot) from the state vector (x)
    theta = x(1);
    theta_dot = x(2);

    % Computes the value of av and Vv based on the given amplitude (A) and frequency (omega)
    av = A * omega^2 * cos(omega * t);
    Vv = A * omega * sin(omega * t);

    % Calculates the angular acceleration (theta_dot_dot) using the Kapitza Pendulum equation
    theta_dot_dot = (-a * av * sin(theta) - b * l * theta_dot + (m * g + b * Vv) * sin(theta) / m) / l;

    % Combines the angular velocity (theta_dot) and angular acceleration 
    % (theta_dot_dot) into the state derivative vector (xdot)
    xdot = [theta_dot; theta_dot_dot];
end
