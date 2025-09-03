%% Question 1
% See file SineTaylor.m

%% Question 2
% Test SineTaylor for the same number with different degrees

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