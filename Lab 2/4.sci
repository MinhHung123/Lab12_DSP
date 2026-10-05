clf();
n = -5:5;
ur = n .* bool2s(n>=0);
plot2d3('gnn', n, ur);
plot(n, ur, 'r.', 'MakerSize', 12);
xlable("n");
ylable("ur(n)");
xgrid();
