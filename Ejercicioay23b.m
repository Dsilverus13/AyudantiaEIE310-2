clear all
clc
n = -40 : 40; n(41) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H1 = dtft(h, n, w);
n = -160 : 160; n(161) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H2 = dtft(h, n, w);
plot(w/pi, abs(H1), 'r', w/pi, abs(H2), 'b');
title('Mag [ H(w) ] rojo : 41 m azul : 161 m');
xlabel('w/pi [rad/m]'); grid;