clear
n=100;
h=1.0/(n+1);
a(1,1)=-(2.0 +4*h*h);
a(1,2)=1.0;
for i=2:n-1,
    a(i,i-1)=1.0;
    a(i,i)=-(2+4*h*h);
    a(i,i+1)=1.0;
end

a(n,n)=-(2.0 +4*h*h);
a(n,n-1)=1.0;

for i=1:n-1,
    b(i)=h*h;
end
b(n)=h*h-1;

tol=0.00001
//dispay the following:
//1. root (at least 9 decimal places or scientific notation)
//2. number of iterations:
//3. error (at least 9 decimal places or scientific notation)
//. gauss elim