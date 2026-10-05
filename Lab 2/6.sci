clf(); // Thêm để làm mới cửa sổ đồ họa

n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 + x2;

// Subplot 1
subplot(3, 1, 1);
plot2d3('gnn', n, x1);
plot(n, x1, 'ro', 'MarkerSize', 8);
a1 = gca();
a1.data_bounds = [-2, -3; 4, 4];
a1.children(2).children.thickness = 2;
title("x1(n)");
xlabel("n");
ylabel("x1(n)");
xgrid();

// Subplot 2
subplot(3, 1, 2);
plot2d3('gnn', n, x2);
plot(n, x2, 'ro', 'MarkerSize', 8);
a2 = gca();
a2.data_bounds = [-2, -1; 4, 4];
a2.children(2).children.thickness = 2;
title("x2(n)");
xlabel("n");
ylabel("x2(n)");
xgrid();

// Subplot 3
subplot(3, 1, 3);
plot2d3('gnn', n, y);
plot(n, y, 'ro', 'MarkerSize', 8);
a3 = gca();
a3.data_bounds = [-2, -3; 4, 7];
a3.children(2).children.thickness = 2;
title("y(n)");
xlabel("n");
ylabel("y(n)");
xgrid();
