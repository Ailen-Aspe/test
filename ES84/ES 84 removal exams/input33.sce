function y=f(x)
    y=-2*sin(x)+4*cos(x)
endfunction

function [x] = TRAPM (a, b, n)
    h=(b-a)/n
    
    sumx = f(0);
    for i = 1:n-1;
        sumx = sumx + 2 *f(i*h);
    end
    
    sumx = sumx + f(n*h);
    x = h * sumx/2;

mprintf("\n x is %.9f\n", x)
endfunction
