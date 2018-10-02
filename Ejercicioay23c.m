clear all
clc
n = -20 : 20; n(21) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H1 = dtft(h, n, w);
n = -80 : 80; n(81) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H2 = dtft(h, n, w);
n2 = -40 : 40; n2(41) = 0.001; h2 = sin((pi/2)*n2) ./ (pi*n2);
w2 = 0 : (pi/1000) : pi; H3 = dtft(h2, n2, w2);
n2 = -160 : 160; n2(161) = 0.001; h2 = sin((pi/2)*n2) ./ (pi*n2);
w2 = 0 : (pi/1000) : pi; H4 = dtft(h2, n2, w2);
plot(w/pi, abs(H1), 'r', w/pi, abs(H2), 'b', w2/pi, abs(H3), 'g', w2/pi, abs(H4), 'y');
title('Mag [ H(w) ] rojo : 41 m azul : 161 m verde : 81 m azul : amarillo 321 m');
xlabel('w/pi [rad/m]'); grid;