function [t,w]=eulermethod(f,a,b,N,iv)
    h=(b-a)/N;
    t=a:h:b;
    n=length(t);
    w=zeros(1,n);
    w(1)=iv;
    for i=1:n-1
        w(i+1)=w(i)+h.*(f(t(i),w(i)));
    end
end
        



   
