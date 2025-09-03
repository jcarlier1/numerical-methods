% Basic MATLAB Tutorial

% Clear the workspace and command window
clear; % Clears all variables from the workspace
clc;   % Clears the command window

% Defining variables
a = 5;          % Scalar variable
b = 10;         % Another scalar variable
c = a + b;     % Adding two scalars

% Displaying the result
fprintf('The sum of %d and %d is %d\n', a, b, c);

% Defining a vector
v = [1, 2, 3, 4, 5]; % Row vector
disp('Row vector:');
disp(v);

% Defining a matrix
M = [1, 2, 3; 4, 5, 6; 7, 8, 9]; % 3x3 matrix
disp('3x3 Matrix:');
disp(M);

% Matrix operations
transpose_M = M'; % Transpose of the matrix
disp('Transpose of the matrix:');
disp(transpose_M);

% Element-wise operations
v_squared = v.^2; % Squaring each element of the vector
disp('Squared vector:');
disp(v_squared);

% Matrix multiplication
result = M * transpose_M; % Multiplying matrix M by its transpose
disp('Matrix multiplication result:');
disp(result);