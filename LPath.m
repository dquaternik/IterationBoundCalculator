function tinf = LPath(l1,d)
% By Devon Quaternik
% LPath.m implements the Longest Path Matrix algorithm. l1 is the first 
% level graph matrix. All others are generated from it. d is the number 
% of delay units.

L = zeros(d,d,d);
L(:,:,1) = l1;

for m = 2:d
    for i = 1:d
        for j = 1:d
            for k = 1:d
                if L(i,k,1) == -1 || L(k,j,(m-1)) == -1
                    ex1(k) = -2;
                else
                ex1(k) = L(i,k,1)+L(k,j,(m-1));
                end
            end
            ex1(d+1) = -1;
            L(i,j,m) = max(ex1);
        end
    end
end

count = 1;

for m = 1:d
    for i = 1:d
        if L(i,i,m) == -1
            ex2(count) = 0;
        else
            ex2(count) = L(i,i,m)/m;
        end
        count = count+1;
    end
end

tinf = max(ex2);