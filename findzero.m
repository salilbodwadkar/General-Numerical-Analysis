function p = findzero(f,a,b,tol)
    fprintf(' n         a             b             p           f(p)    \n');
    fprintf('-----------------------------------------------------------\n');
    w=1;
    for n =1:100
        p=a+((w*f(a)*(a-b))/(f(b)-w*f(a)));
        if (norm(b-a) < tol) | (norm(f(p)) < tol)
            break;
        end
        fprintf('%2d  %12.8f  %12.8f  %12.8f  %12.8f\n', n, a, b, p, f(p));
        if f(p)*f(b) > 0
            w=1/2;
        else 
            w=1;
            a=b;
        end
        b=p;
    end
