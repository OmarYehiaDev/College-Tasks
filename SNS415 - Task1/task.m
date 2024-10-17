% Define initial parameters for Voltage Distribution
V0 = 100;
L = 100;
N = 5000;

x_voltage = linspace(0, L, N);
beta_voltage = 2 * pi / L;
Vl = abs(2 * V0) * abs(cos(beta_voltage * L));
disp(['Voltage Distribution along Open-Circuit Transmission Line at the end (L): ' num2str(Vl) ' V']);

% Calc the curve
Vl_distribution = abs((2 * V0) * cos(beta_voltage * x_voltage));

% Plotting the Voltage Distribution
figure;
subplot(2, 1, 1);
plot(x_voltage, Vl_distribution, 'LineWidth', 2);
xlabel('Distance along the transmission line (m)');
ylabel('Voltage (V)');
title('Voltage Distribution along Open-Circuit Transmission Line');
grid on;

% Define initial parameters for Current Distribution
V = 200;
Z = 30;
L_current = 100;
N_current = 1000;
x_current = linspace(0, L_current, N_current);
beta_current = 2 * pi / L_current;

% Calc the curve
I_current = abs(2 * V / Z) * abs(sin(beta_current * x_current));

% Plotting the Current Distribution
subplot(2, 1, 2);
plot(x_current, I_current, 'LineWidth', 2);
xlabel('Distance along the transmission line (m)');
ylabel('Current (A)');
title('Current Distribution along Open-Circuit Transmission Line');
grid on;