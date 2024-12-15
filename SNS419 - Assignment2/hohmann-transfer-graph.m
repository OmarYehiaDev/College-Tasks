% Constants
mu = 3.986e5; % Gravitational parameter of Earth (μ) (Km^3/s^2)
R_earth = 6371; % Earth's radius (Km)

% Initial and final radii range
r1 = 1.05 * R_earth; % Initial radius above Kármán line by ~218.55 Km
r2_range = 1.05:0.1:80; % Final radii range (Earth radii)

% Calculate Delta-V for each final radius
for i = 1:length(r2_range)
    r2 = r2_range(i) * R_earth;

    % Calculate semi-major axis of transfer ellipse
    a = (r1 + r2) / 2;

    % Calculate velocities at perigee and apogee of transfer ellipse
    v1 = sqrt(mu * (2/r1 - 1/a));
    v2 = sqrt(mu * (2/r2 - 1/a));

    % Calculate Delta-V for each burn
    DV1(i) = v1 - sqrt(mu/r1);
    DV2(i) = sqrt(mu/r2) - v2;

    % Total Delta-V
    Total_DV(i) = DV1(i) + DV2(i);
end

% Plot the results
figure;
plot(r2_range, Total_DV, 'k', 'LineWidth', 2);
hold on;
plot(r2_range, DV1, 'b', 'LineWidth', 1.5);
plot(r2_range, DV2, 'r', 'LineWidth', 1.5);
xlabel('Final Radius (Earth Radii)');
ylabel('Delta-V (km/s)');
title('Hohmann Transfer');
legend('Total DV', 'DV1', 'DV2');
grid on;