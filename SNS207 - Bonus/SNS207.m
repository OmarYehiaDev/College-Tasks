%{
  This code is written by Omar Yehia Tawfeek
  All rights reserved to O.Y.T
%}
x = [0:10:20000];
[T, a, P, rho] = atmosisa(x);

plot(x, P, "green"), xlabel('Altitude (km)'), ylabel('Pressure (Pa)'),
title('Variation of P for ISA with Altitude', "by Omar Yehia"),

figure
plot(x, T, "red"), xlabel('Altitude (km)'), ylabel('Temperature (K)'),
title('Variation of T for ISA with Altitude', "by Omar Yehia"),

figure
plot(x, rho, "blue"), xlabel('Altitude (km)'), ylabel('Density (kg/m^3)'),
title('Variation of ρ for ISA with Altitude', "by Omar Yehia"),

grid on