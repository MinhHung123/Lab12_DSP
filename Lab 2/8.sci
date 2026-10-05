// Dữ liệu tín hiệu gốc
nx = -2:1;
x  = [1, -2, 3, 6];

// ==============================================================
// Window 1: Cặp tín hiệu x(n) và y1(n) = x(-n)
// ==============================================================
figure(0); clf();

// Đồ thị x(n)
subplot(2, 1, 1);
plot2d3('gnn', nx, x);
plot(nx, x, 'ro', 'MarkerSize', 8);
a = gca();
a.data_bounds = [-3, -4; 3, 8];
a.children(2).children.thickness = 2;
title("Original Signal x(n)");
xlabel("n");
ylabel("x(n)");
xgrid();

// Đồ thị y1(n)
ny1 = -nx($:-1:1);      // Đảo ngược trục chỉ số: [-1, 2]
y1  = x($:-1:1);        // Đảo ngược thứ tự các mẫu
subplot(2, 1, 2);
plot2d3('gnn', ny1, y1);
plot(ny1, y1, 'bo', 'MarkerSize', 8);
a = gca();
a.data_bounds = [-3, -4; 3, 8];
a.children(2).children.thickness = 2;
title("Manipulated Signal y1(n) = x(-n)");
xlabel("n");
ylabel("y1(n)");
xgrid();

// ==============================================================
// Window 2: Cặp tín hiệu x(n) và y2(n) = x(n + 3)
// ==============================================================
figure(1); clf();

// Đồ thị x(n)
subplot(2, 1, 1);
plot2d3('gnn', nx, x);
plot(nx, x, 'ro', 'MarkerSize', 8);
a = gca();
a.data_bounds = [-6, -4; 2, 8];
a.children(2).children.thickness = 2;
title("Original Signal x(n)");
xlabel("n");
ylabel("x(n)");
xgrid();

// Đồ thị y2(n)
ny2 = nx - 3;           // n_mới = n_cũ - 3: [-5, -2]
y2  = x;
subplot(2, 1, 2);
plot2d3('gnn', ny2, y2);
plot(ny2, y2, 'mo', 'MarkerSize', 8);
a = gca();
a.data_bounds = [-6, -4; 2, 8];
a.children(2).children.thickness = 2;
title("Manipulated Signal y2(n) = x(n + 3)");
xlabel("n");
ylabel("y2(n)");
xgrid();

// ==============================================================
// Window 3: Cặp tín hiệu x(n) và y3(n) = 2x(-n - 2)
// ==============================================================
figure(2); clf();

// Đồ thị x(n)
subplot(2, 1, 1);
plot2d3('gnn', nx, x);
plot(nx, x, 'ro', 'MarkerSize', 8);
a = gca();
a.data_bounds = [-4, -6; 2, 14];
a.children(2).children.thickness = 2;
title("Original Signal x(n)");
xlabel("n");
ylabel("x(n)");
xgrid();

// Đồ thị y3(n)
ny3 = -nx($:-1:1) - 2;  // n_mới = -n_cũ - 2: [-3, 0]
y3  = 2 * x($:-1:1);
subplot(2, 1, 2);
plot2d3('gnn', ny3, y3);
plot(ny3, y3, 'ko', 'MarkerSize', 8);
a = gca();
a.data_bounds = [-4, -6; 2, 14];
a.children(2).children.thickness = 2;
title("Manipulated Signal y3(n) = 2*x(-n - 2)");
xlabel("n");
ylabel("y3(n)");
xgrid();
