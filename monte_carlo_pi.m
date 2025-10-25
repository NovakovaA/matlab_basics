clc, clear, shg, close all;

% Number of random points
N = 100;  

% Generate random x, y in [-1, 1]
x = 2 * rand(N, 1) - 1; % x and y each contain N random numbers uniformly distributed between -1 and 1
y = 2 * rand(N, 1) - 1;

% Check if points lie inside the unit circle
inside = x.^2 + y.^2 <= 1; % x.^2 + y.^2 = 1 rovnice pro kruh
                           % (.) říká MATLABu, že se má operace provést po prvcích (element-wise) — tedy každý prvek vektoru x se umocní zvlášť

% Estimate pi
pi_est = 4 * sum(inside) / N;

% Display result
disp("Estimated value of pi = " + pi_est);

% Plot points
figure;
hold on;
axis equal;

% Points inside circle (green)
plot(x(inside), y(inside), '.g');
% Points outside circle (red)
plot(x(~inside), y(~inside), '.r');

% Draw unit circle
theta = linspace(0, 2*pi, 200);
plot(cos(theta), sin(theta), 'b', 'LineWidth', 2);

title(['Monte Carlo Estimation of \pi (N = ' num2str(N) ', Estimate = ' num2str(pi_est) ')']);
xlabel('x');
ylabel('y');
legend('Inside Circle','Outside Circle','Unit Circle');
hold off;
