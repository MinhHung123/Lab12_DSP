n = -1:1;
x = [1, 3, -2];
x_rev = [x(3), x(2), x(1)];

xe = (x + x_rev)/2;
xo = (x - x_rev)/2;

subplot(3,1,1);
plot2d3('gnn', n, x);
plot(n, x, 'r.', 'MarkerSize', 12);
a1 = gca();
a1.data_bounds = [-2, -3; 2, 4];
a1.children(2).children.thickness = 2; // Làm đậm thân cọc đứng
title("x(m)");
xgrid();

subplot(3,1,2);
plot2d3('gnn', n, xe);
plot(n, xe, 'r.', 'MakerSize', 12);
a2 = gca();
a2.data_bounds = [-2, -2; 2, 4];
a2.children(2).children.thickness = 2;
title("x even");
xgrid();

subplot(3,1,3);
plot2d3('gnn', n, xo);
plot(n, xo, 'r.', 'MarkerSize', 12);
a3 = gca();
a3.data_bounds = [-2, -2.5; 2, 2.5];
a3.children(2).children.thickness = 2;
title("x odd");
xgrid();
