function y=f(x)
    y=exp(-x).*(3.2*sin(x)-0.5*cos(x))
endfunction

xl= 3;
xu= 4;
tol= 0.00000001;

    while
   x = xu;
    fxu = f(xu);
    x = xl;
    fxl = f(xl);
    x = xr;
    xr = (xu+xl)/2;
    fxr = f(xr);
    
    if (fXl == 0) then
        mprintf("Xl is the root.\n");
        elseif (fxu == 0)
        mprintf("Xu is the root.\n");
        elseif (fxu*fxl > 0)
        mprintf("Change initial values. Root is not enclosed.\n");
        else
    i = 0;
    ea = 100;
    mprintf("i\t xl\t xu\t f(xl)f(xr)\t\t ea\n ");
    
    while (ea>tol)
        x = xrnew;
        xrnew = (xl+xu)/2;
        fxr = f(xr);
        xrold=xrnew;
        x = xl;
        fxl = f(xl);
        i = i+1;
        f = fxl * fxr;
        
        if (f<0) then
            xu = xrnew;
             elseif (f>0)
                    xl = xrnew;
                else
                    root = xrnew;
               end
        end
        
        xrold=xrnew;
        xrnew = (xl+xu)/2;
        ea = abs((xrnew-xrold)/xrnew)*100;
        mprintf("%d\t%.7f\t%f\t%.7f\t.7f\t.7f\n", i, xu, xl, xrnew, f, ea);    
        
    end
    
    mprintf("\n The number of iterations is %d.\n",i);
    mprintf("\n The root is %.7f.\n", Xr_new);
     end
