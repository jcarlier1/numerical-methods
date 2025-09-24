function x_values = LogisticMap(l,x)
%{
This function computes the logistic map values for a given growth rate 'l' 
and an initial value 'x'. The function 
iterates the logistic equation to generate a sequence of values, which 
are returned as a column vector. The first value of the sequence is 
initialized based on the last computed value from the previous iterations.
%}

largen = 1000;
n = 10; % Number of limiting values of the sequence
x_values = zeros(1, n);

for i = 1:largen
    x = l * x * (1 - x);
end

x_values(1) = x; % Initialize the first value of the sequence


for i = 2:n % Loop through iterations from 2 to n
    x_values(i) = l * x_values(i-1) * (1 - x_values(i-1)); % Logistic map equation
end

% Return the array of values
x_values = x_values(:); % Ensure it is a column vector

end