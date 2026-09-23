%Bening Aqilla Fakhrun Nissa
%L0325018
%Menghitung nilai e^(0.3) menggunakan deret taylor
%n = {0,1,2,3,4}

x = 0.3;
eksak = exp(x);

fprintf('Eksak e^0.3 = %5.15f\n\n', eksak);
fprintf(' n |     Pendekatan     |       Error        |  Error Relatif  |      RPE (%%)\n');
fprintf('------------------------------------------------------------------------------------\n');

for n = 0:4
    p = 0;
    for i = 0:n
        p = p + (x^i/factorial(i));
    end

    galat     = abs(eksak - p);
    galat_rel = galat / eksak;
    rpe       = galat_rel * 100;

    fprintf('%2d | %5.15f | %5.15f | %5.15f | %5.15f\n', ...
            n, p, galat, galat_rel, rpe);
end
