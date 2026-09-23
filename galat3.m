%Bening Aqilla FN - L0325018
%N = {1,2,3,4,5}, x = 1

x = 1;
eksak = sin(x);

fprintf('Eksak sin(1) = %5.15f\n\n', eksak);
fprintf(' N |     Pendekatan     |       Error        |  Error Relatif  |      RPE (%%)\n');
fprintf('------------------------------------------------------------------------------------\n');

for N = 1:5
    p = 0;
    for n = 0:N
        p = p + ((-1)^n * x^(2*n+1)) / factorial(2*n+1);
    end

    galat     = abs(eksak - p);
    galat_rel = galat / eksak;
    rpe       = galat_rel * 100;

    fprintf('%2d | %5.15f | %5.15f | %5.15f | %5.15f\n', ...
            N, p, galat, galat_rel, rpe);
end
