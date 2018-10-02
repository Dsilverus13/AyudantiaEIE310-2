x = [zeros(1,16) ones(1,10) zeros(1,30)];
nx = -5: 50;
[e1, nh1] = impulso(0, -5, 50);
h1 = (1.00000002 .^ nh1) .* e1;
[y1, ny1] = convol(x, nx, h1, nh1);
subplot 611; stem(nx, x); axis([-10 60 0 1]); title('x(n)'); grid
subplot 612; stem(nh1, h1); axis([-10 60 0 1]); title('h(n)'); grid
subplot 613; stem(ny1, y1); axis([-10 60 0 5]); title('y(n)'); grid
[e2, nh2] = escalon(0, -5, 50);
h2 = (1.00000002 .^ nh2) .* e2;
[y2, ny2] = convol(x, nx, h2, nh2);
subplot 614; stem(nx, x); axis([-10 60 0 1]); title('x(n)'); grid
subplot 615; stem(nh2, h2); axis([-10 60 0 1]); title('h(n)'); grid
subplot 616; stem(ny2, y2); axis([-10 60 0 5]); title('y(n)'); grid