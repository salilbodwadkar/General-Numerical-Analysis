function I = simpcomp(f,a,b,n)
    h=(b-a)/n;
    I0=f(a)+f(b);
    I1=0;
    I2=0;
    for i=1:n-1
        X=a+i*h;
        if mod(i,2)==0
            I2=I2 + f(X);
        else
            I1=I1+f(X);
        end
    end
    I=(h/3)*(I0+2*I2+4*I1);
end
