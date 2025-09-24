%Clean up
clc,clear, close all;
qnumber = 1;

%% Question 1
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
disp("See SineTaylor.m")


%% Question 2
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
% Approximate sin(pi/8) using SineTaylor with 1 term
approximation = SineTaylor(pi/8, 1);
disp('Approximation of sin(pi/8) with 1 term:');
disp(approximation);
% Error estimation
% Calculate the error for the approximation
exactValue = sin(pi/8);
errorEstimate = abs(exactValue - approximation);
disp('Error estimation for sin(pi/8) with 1 term:');
disp(errorEstimate);

%% Question 3
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
% Approximate sin(pi/8) for n = 1, ..., 41
% And calculate the error for SineTaylor(pi/8) for n = 1, ..., 41
nValues = 1:41;
sinEstimates = zeros(size(nValues));
errorEstimates = zeros(size(nValues));
for k = nValues
    sinEstimates(k) = SineTaylor(pi/8, k);
    errorEstimates(k) = abs(exactValue - sinEstimates(k));
end

% A polynomial of order 5 is sufficient for an estimation with error < 10^5
disp("Error estimation for an order 5 polynomial")
disp(errorEstimates(5))
disp("10^5 is greater since error - 10^5 = negative")
disp(errorEstimates(5) - 10^-5)

% And order 11 is sufficient for an estimation with error < 10^15
disp("Error estimation for an order 11 polynomial")
disp(errorEstimates(11))
disp("10^15 is greater since error - 10^15 = negative")
disp(errorEstimates(11) - 10^-15)

% Plot Error vs. n using loglog
figure;
loglog(nValues, errorEstimates, '-o');

xlabel('Order of truncation (n)');
ylabel('Error Estimate');
title('Error vs. Order of truncation for SineTaylor Approximation');
grid on;

disp("This plot is a simple example showing a successful Taylor Approximation which converges quickly for higher truncation orders bringing the error down significantly")

%% Question 4
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
disp("Error plot of SineTaylor(10pi) for n = 1, ..., 41")
% Approximate sin(10pi) for n = 1, ..., 41
% And calculate the error for SineTaylor(10pi) for n = 1, ..., 41
nValues = 1:41;
sinEstimates10pi = zeros(size(nValues));
errorEstimates10pi = zeros(size(nValues));
for k = nValues
    sinEstimates10pi(k) = SineTaylor(10*pi, k);
    errorEstimates10pi(k) = abs(sin(10*pi) - sinEstimates10pi(k)); % Use exact value for sin(10*pi)
end

% Plot Error vs. n using loglog
figure;
loglog(nValues, errorEstimates10pi, '-o');

xlabel('Order of truncation (n)');
ylabel('Error Estimate');
title('Error vs. Order of truncation for SineTaylor Approximation at 10\pi');
grid on;

disp("This example shows how the approximation fails to improve during the first few iterations before starting to decrease. Even after starting to decrease, number 41 jumps up again. This demonstrates that the Taylor Series is not strictly convergent")

%% Question 5
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
disp("Plot of sin(x) and Taylor approximation up to polynomial of order 7")
disp("This plot shows is a visual representation of how accurate higher polynomial approximations are, starting from a straight line to a very sine looking curve")

% Plot of sin(x) with x = [-pi,pi]
x = linspace(-pi, pi, 100); % Generate x values from -pi to pi
figure;
plot(x, sin(x), 'r', 'DisplayName', 'sin(x)'); % Add a legend to the plot
hold on; % Retain the current plot

for n = 0:7
    % Calculate the Taylor series approximation for each n
    Pn = zeros(size(x));
    for j = 1:length(x)
        Pn(j) = SineTaylor(x(j), n);
    end
    plot(x, Pn, 'DisplayName', ['P_' num2str(n) '(x)']);
end
hold off;
legend show;
title('Sine Function and Taylor Series Approximations');

%% Question 6
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
disp("See Logistic.m")

%% Question 7
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
disp("Logistic.m usage demo")

disp("Call with default value for nl=10: Logistic(0.1,3.9)")
Logistic(0.1,3.9);
disp("For 10 fixed lambda values, we can see a few values of the sequence xn. This picture of the attractor increases after l=1, and it starts to diverge after l=3")
disp("Call assigning nl: Logistic(2,4,200)")
Logistic(2,4,200);
disp("Choosing a much higher resolution on the lambda axis, we can further visualize the scattering of the xn sequence with higher values of lambda, and even visually point the divergence thresholds for the chosen x0")
disp("Exit with an error when called with lambda greater than 4: Logistic(0,5)")
try
    Logistic(0,5);
catch ME
    disp(ME.message);
end

disp("Exit with an error when called with lambda less than 0: Logistic(-1,4)")
try
    Logistic(-1,4);
catch ME
    disp(ME.message);
end

disp("Exit with an error when called with lmin bigger than lmax: Logistic(2,1)")
try
    Logistic(2,1);
catch ME
    disp(ME.message);
end