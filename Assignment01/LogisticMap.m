function LogisticMap(l,x)
largen = 1000;
n = 100; % Number of iterations
x_values = zeros(1, n); % Preallocate array for efficiency
x_values(1) = x; % Set initial value

for i = 2:1000

for i = 2:n % Loop through iterations from 2 to n
    x_values(i) = l * x_values(i-1) * (1 - x_values(i-1)); % Logistic map equation
end

% Return the array of values
x_values = x_values(:); % Ensure it is a column vector

end