function y=f(x)
    y=exp(-x).*(3.2*sin(x)-0.5*cos(x))
endfunction

tol=0.00000001

//dispay the following:
//1. root (at least 9 decimal places or scientific notation)
//2. number of iterations:
//3. error (at least 9 decimal places or scientific notation)
//4. 3-4
//5. bisection