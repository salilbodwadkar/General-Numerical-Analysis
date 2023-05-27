function I=trapcomp(f,a,b,n)
    h=(b-a)./n;
    I0=f(a)+f(b);
    I1=0;

    for i=1:(n-1)
        X=a+i.*h;
        I1=I1+f(X);
    end
    I=(h./2).*(I0+2.*I1)
end