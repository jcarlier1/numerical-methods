function y = SineTaylor(x, n)
% Initial value of the Taylor Series for Sine.
y = zeros(size(x)); % Initialize y to be the same size as x
% Initialize the series degree
k = 0;
% Ensure n is an integer
n = round(n);
% Ensure n is positive
if n >= 0
    while k <= n
        if mod(k, 2) == 1
            temp = (x).^k /factorial(k);
            if mod(k,4) == 1
                y = y + temp;
            else 
                y = y - temp;
            end
        end
        k = k + 1;
    end
end

end