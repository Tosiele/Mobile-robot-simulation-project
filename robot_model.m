function dstate_dt = robot_model(state, velocity)
    x = state(1);
    y = state(2);
    theta = state(3);

    v = velocity(1);
    omega = velocity(2);

    dx = cos(theta)*v;
    dy = sin(theta)*v;
    dtheta = omega;

    dstate_dt = [dx, dy, dtheta];
end