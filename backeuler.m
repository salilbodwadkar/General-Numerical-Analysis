function [t,w] = backeuler(f,dfdy, a ,b, alpha, N, maxiter, tol)
    h = (b-a)/N;
    t = a:h:b;
    n = length(t);
    w = zeros(1,n);
    w(1) = alpha;

    for i=1:n-1
        w(i+1)=newton4backwardeuler(f, dfdy, w(i), t(i+1), h, maxiter, tol);
    end


