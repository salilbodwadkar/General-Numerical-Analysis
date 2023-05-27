function wnplus1=newton4backwardeuler(f, dfdy, wn, tnplus1, h, maxiter, tol)
    g=@(y) wn-y+h*f(tnplus1, y);
    dgdy= @(y) -1 + h*dfdy(tnplus1, y);
    wnplus1=newtonwithmaxiter(g,dgdy, wn, maxiter, tol);
end

    