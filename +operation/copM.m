function [x] = copM( q , p )

x = ( p * q - conj( q * p) ) ./ 2 ;

end