function p = newtonwithmaxiter(f, df, p0, maxiter, tol)
% Solve f(p) = 0 using Newton's method.
fprintf(' i         p          |p-p0|   \n');
fprintf('-------------------------------\n');

i=1;
while i < (maxiter + 1)
    p = p0 - f(p0)/df(p0);
    if abs(p-p0) < tol, return; end
    fprintf('%2d  %12.8f  %12.8f\n', i, p, abs(p-p0));
    p0 = p;
    i = i+1;
end
fprintf('Max iterations reached')
