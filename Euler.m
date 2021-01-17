%Program to Implement Euler Method
% I can make this code more complex than this.
% this is only suited to this question alone.
% the percentage sign (%) is used to comment
clear all; clc; close all
% anonymous function of our diffential equation with input parameter
% t and x and out put 4*exp(0.8*t) - 0.5*x
ftx = @(t,x) 4*exp(0.8*t) - 0.5*x;
N = 4; % play(change) with this value but before that comment line21 and uncomment line22
to = 0; % boundary condition t given in the problem
tf = 4; % condition when t is 4
h = (tf - to)/N;    % this calculates h to be 1 but gives another value if u change value line9
xo = 2; % boundary condition x given in the problem
x = [1,N];  % row matrix containing x elements
t = [1,N];  % row matrix containing t elements
x(:,1) = xo;    % initializing first element in matrix x
t(:,1) = to;    % initializing first element in matrix t

disp('Euler method table of result')
disp([sprintf('%5s', 't'), sprintf('%15s', 'x')])
for i=1:(N+1)
%for i=1:(length(x)-1)*(N+1)    %if you change the value on line9, remove
                                %the % @ the begining of line22 and put on
                                %line21
    x(i+1) = x(i) + ftx(t(:,i),x(:,i)) * h; % computing next value of x
    disp([sprintf('%6.1f', t(:,i)), sprintf('%16.3f', x(:,i))]) % displays results x and t
    t(i+1) = t(i) + h;  % compute next value of t
end
% you can change the value on line9 from 4 to 10,20,50 or any number of
% your choice. Changing it will nullify line21 so put % to temporarily
% ignore/remove line21. You will need line 22 for the code to work again.
% remove the % on line22
% the program will auto adjust with a different step size h re-calculated
% the default h is 1



