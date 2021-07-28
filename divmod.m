function [integ, rest] = divmod(number)
%This function is to separate a number into integer part and non-integer
%part
integ = fix(number);
rest =  abs(number - integ);
