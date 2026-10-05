F = 50;
T = 1/F;
t1 = T*5;
t = linspace(0, t1, 1000);
xa = 3 * sin(100 * %pi * t);

subplot(3,1,1);
plot(t, xa, '-b', 'LineWidth', 2);
xtitle("1. Analog signal xa(t) in 5 periods", "t (seconds)", "xa(t)");
xgrid();

//------------------------------------------------------------------------

N = 6;
n = 0 : (5*N - 1);
xn = 3 * sin((%pi / 3) * n);

subplot(3,1,2);
plot2d3('gnn', n, xn);
plot(n, xn, 'r.');
xtitle("2. Discrete-time signal x(n) in 5 periods (N = 6)", "n (samples)", "x(n)");
xgrid();

//--------------------------------------------------------------------------

delta = 0.1;
xq = delta * floor(xn/delta);

subplot(3,1,3);
plot2d3('gnn', n, xq);
plot(n, xq, 'k.');
xtitle("3. Truncated method");
xgrid();
