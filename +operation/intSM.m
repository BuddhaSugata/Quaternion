function [x] = intSM( q , p )

x = Quaternion.operation.realQ( ( q * p + conj(q * p) ) ./ 2 );

end