%% HW 1 Run Script
% Devon Quaternik
% ELEN 249

clear;
close all;

%% Section 2-7
%% Problem 1 
% Part a

l1 = [-1 0 -1; 7 -1 3; 3 -1 -1];
d = 3;

tinf1a = LPath(l1,d)

% Part b
wb = [inf 0 inf; -7 inf -3; -3 inf inf];
tinf1B = MCM(wb,d)

%% Problem 2
% Part a

l1 = [-1 0 -1 -1 -1 -1 -1 -1; -1 -1 0 -1 -1 -1 -1 -1; -1 -1 -1 0 -1 -1 ...
    -1 -1; 3 -1 -1 -1 1 -1 -1 -1; -1 -1 -1 -1 -1 0 -1 -1; -1 -1 -1 -1 ...
    -1 -1 0 -1; -1 -1 -1 -1 -1 -1 -1 0; 4 -1 -1 -1 7 -1 -1 -1];
d = 8;
tinf2a = LPath(l1,d)

%Part b
wb = [inf 0 inf inf inf inf inf inf; inf inf 0 inf inf inf inf inf; inf ...
    inf inf 0 inf inf inf inf; -3 inf inf inf -1 inf inf inf; inf inf ...
    inf inf inf 0 inf inf; inf inf inf inf inf inf 0 inf; inf inf inf ...
    inf inf inf inf 0; -4 inf inf inf -7 inf inf inf];
tinf2b = MCM(wb,d)

%% Problem 3
% Part a

l1 = [ 4 4 -1 4 0 4; -1 -1 0 -1 -1 -1; 4 4 -1 4 -1 4; -1 -1 -1 -1 0 -1; ...
    -1 -1 -1 -1 -1 -1; -1 -1 -1 -1 -1 -1];
d = 6;

tinf3a = LPath(l1,d)

% Part b

wb = [ -4 -4 inf -4 0 -4; inf inf 0 inf inf inf; -4 -4 inf -4 inf -4; ...
  inf inf inf inf 0 inf; inf inf inf inf inf inf; inf inf inf inf inf inf];

tinf3b = MCM(wb,d)

%% Problem 4
% Part a

l1 = [4 0 -1; 5 -1 0; 5 -1 -1];
d = 3;

tinf4a = LPath(l1,d)

% Part b

w = [-4 0 inf; -5 inf 0; -5 inf inf];

tinf4b = MCM(wb,d)







