clear; clc; close all;

% Simulation time
tspan = [1, 10];

% Start state
state0 = [0; 0; 0]; % x = 0, y = 0, theta = 0

% Input variables
v = 7;          % m/s
omega = 0.5;    % rad/s

velocitys = [v; omega];

% Anonymous function for ode45
odefun = @(t, state) robot_model(t, state, velocitys);

% Symulation
[t, state] = ode45(odefun, tspan, state0);

% Wykres trajektorii
figure;
plot(state(:,1), state(:,2), 'LineWidth', 2);
xlabel('x [m]');
ylabel('y [m]');
title('Robot trajectory');
grid on;
