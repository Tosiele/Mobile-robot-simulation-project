function dstate_dt = robot_model(t, state, velocitys)
    x = state(1);
    y = state(2);
    theta = state(3);

    v = velocitys(1);
    omega = velocitys(2);

    dx = cos(theta)*v;
    dy = sin(theta)*v;
    dtheta = omega;

    dstate_dt = [dx; dy; dtheta];
end