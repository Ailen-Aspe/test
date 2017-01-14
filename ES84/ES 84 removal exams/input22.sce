function x = GAUSS (a,b)
    
    n=size (a, "c")
    x=zeros(n,1)
    //a. Forward elimination
    for k= 1: n-1
        for i = k + 1: n
            fact = a(i,k)/a(k,k);
            for j = k + 1: n
                a(i,j) = a(i,j) - fact * a (k,j);
            end
            b(i) = b(i) - fact * b(k);
        end
    end
    
    //b. Backward substitution
    
    x(n) = b(n) / a(n,n)
        for i = n-1:-1:1
            sumx = b (1);
            for j = i + 1:n
                sumx = sumx - a(i,j) * x(j);
            end
            x(i) = sumx/a(i,i);
        end
    
endfunction
