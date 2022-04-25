function Q = streckC(Q, a)

ax = normalize(a);

index = 2;

for b = 1:index
    for c = 1:index
        for d = 1:index
        Q(b,c,d) = ax * Q(b,c,d) * ax;
        end
    end
end