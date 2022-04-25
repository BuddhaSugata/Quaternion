function Q = shiftC(Q, s)

index = 2;

for b = 1:index
    for c = 1:index
        for d = 1:index
        Q(b,c,d) = Q(b,c,d) + s;
        end
    end
end