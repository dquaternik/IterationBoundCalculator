function tinf = MCM(wb,d)
% By Devon Quaternik
% MCM.m calculates the Minimum Cycle Mean for a graph. Wb(i,j) is
% the matrix that has weight of edge. From node is i, to node is j. Wb is 
% the same as L1 from LPM algo, substituting 'inf' for -1 and flipping the   
% signs on all valid paths. d is the number of delays in the graph. 1st   
% node is always taken as reference. 

% Find f0,f1,....,fd
f = ones(d,d+1);
f = f*inf;
f(1,:) = 0;

for m = 2:d+1
    for j = 1:d
        for i = 1:d
            ex1(i) = f(i,m-1)+wb(i,j);
        end
    f(j,m) = min(ex1);    
    end
end

fd = f(:,d+1);
log = zeros(1,d);
for m = 1:d
    for i = 1:d
        ex2(i) = (fd(i)-f(i,m))/(d-(m-1));
%         if isnan(ex2(i))
%             ex2(i) = 0;
%         end
    end
    log = [log; ex2];
    
end
ex3 = log(2:d+1,:);
tinf = -(min(max(ex3',[],2)));
