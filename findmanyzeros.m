function p = findmanyzeros(f, a, b, n, tol)
    t=linspace(a,b,n+1);
    p=[];
    ft=f(t);
    for k=2:n+1 
        if (ft(k)*ft(k-1) < 0)
            a=findzero(f,t(k-1),t(k),tol);
            p=[p a];
        end
    end
end

 