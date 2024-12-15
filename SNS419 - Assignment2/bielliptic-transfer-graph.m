% Constants
mu = 1; % Gravitational parameter (normalized)
r1 = 1; % Initial orbit radius (normalized)

% Final radius range for Hohmann Transfer (avoid singularity at r_final = 1)
r_final = linspace(1.05, 80, 1000);

% Parameters
r2 = linspace(1.05, 80, 500);  % Range for DV2 radius

% Delta-V calculations for Bi-elliptic transfer
DV1 = 3.0 - 1.0 ./ sqrt(r2);              % First impulse
DV2 = abs(sqrt(2 * (1 + 1 ./ r2)) - 1);   % Second impulse
DV3 = abs(1 - sqrt(1 ./ r2));             % Third impulse
Total_DV = DV1 + DV2 + DV3;               % Total Delta-V

% --- Plot Bi-Elliptic Transfer ---

plot(r2, Total_DV, 'k', 'LineWidth', 2, 'DisplayName', 'Total DV'); % Total DV
hold on;
plot(r2, DV1, 'b', 'LineWidth', 2, 'DisplayName', 'DV1'); % DV1
plot(r2, DV2, 'r', 'LineWidth', 2, 'DisplayName', 'DV2'); % DV2
plot(r2, DV3, 'g', 'LineWidth', 2, 'DisplayName', 'DV3'); % DV3
hold off;

title('Bi-Elliptic Transfer', 'FontWeight', 'bold');
xlabel('DV2 Radius (Earth Radii)');
ylabel('Delta-V (km/s)');
legend('Location', 'best');
grid on;
xlim([0 80]); % X-axis range
ylim([0 5]);  % Y-axis range
xticks(0:20:80); % X-axis ticks
yticks(0:1:5);  % Y-axis ticks