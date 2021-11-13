%{
This code is written by Omar Yehia Tawfeek
All rights reserved to O.Y.T
%}
x = [0:5:70000];
y = (6.67384*10.^-11)*((5.97219*10.^24)./(((6371+x)*10.^3).^2));
plot(x, y), xlabel('Height (km)'), ylabel('Gravity (m/s^2)'),
title('Gravity & Height'), grid on