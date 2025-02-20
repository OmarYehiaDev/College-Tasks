% Made By: Omar Yehia Tawfeek Ahmed %

y = linspace(0,10,100); % Spread Range
E0 = 1; % Electric Field Max Peak
H0 = 1; % Magnetic Field Max Peak
k = 2*pi/3; % Waves count
w = 2*pi; % Frequency
t = 0; % Time

% Calculating E in x axis
E = E0*cos(k*y-w*t); 

% Calculating H in z axis
H = H0*cos(k*y-w*t);

% Plotting Calculations
figure;
plot3(y, E, zeros(size(y)), 'blue', 'LineWidth', 2); % Electric Field in Blue
hold on;
plot3(y, zeros(size(y)), H, 'green', 'LineWidth', 2); % Magnetic Field in Green

% Final Touches
xlabel('Propagation Direction (y axis)');
ylabel('Electric Field (x axis)');
zlabel('Magnetic Field (z axis)');
title('Electromagnetic Waves in Free Space');
legend('E Field', 'H Field');
grid on;
axis tight;
view(30,30);
