function y = SineTaylor(x, n)
% Initial value of the Taylor Series for Sine.
y = zeros(size(x)); % Initialize y to be the same size as x
% Initialize the series degree
k = 1;
% Ensure n is an integer
n = round(n);
% Ensure n is positive
if n >= 0
    while k <= n
        temp = (-1)^k * (x.^(2*k+1)) ./ factorial(2*k+1); % Element-wise operations
        y = y + temp; % Accumulate the results
        k = k + 1;
    end
end

end