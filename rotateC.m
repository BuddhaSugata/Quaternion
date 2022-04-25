function Q = rotateC(Q, r)

rot = normalize(r);

index = 2;

for b = 1:index
    for c = 1:index
        for d = 1:index
        Q(b,c,d) = rot^(-1) * Q(b,c,d) * rot;
        end
    end
end