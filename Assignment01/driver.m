clc,clear, close all;

qnumber = 1;
%% Question 1
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
% See file SineTaylor.m


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
    errorEstimates10pi(k) = abs(exactValue - sinEstimates10pi(k));
end

% Plot Error vs. n using loglog
figure;
loglog(nValues, errorEstimates10pi, '-o');

xlabel('Order of truncation (n)');
ylabel('Error Estimate');
title('Error vs. Order of truncation for SineTaylor Approximation');
grid on;

%{
The plot shows how the approximation fails to improve during the first 
few iterations before starting to decrease. Even after a few iterations, 
number 41 jumps up again. This demonstrates that the Taylor Series is not
strictly convergent.
%}

%% Question 5
disp(['Question number: ', num2str(qnumber)]);
qnumber = qnumber + 1;
disp("Plot of sin(x) and Taylor approximation up to polynomial of order 7")

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

%% Question X
% Test SineTaylor for the same number with different degrees

%{
disp('Sin(1) Degree 0')
result0 = SineTaylor([1,2,3], 0);
disp(result0);
disp('Sin(1) Degree 1')
result1 = SineTaylor([1,2,3], 1);
disp(result1);
disp('Sin(1) Degree 2')
result2 = SineTaylor([1,2,3], 2);
disp(result2);
disp('Sin(1) Degree 3')
result3 = SineTaylor([1,2,3], 3);
disp(result3);
%}