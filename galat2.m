% Bening Aqilla FN - L0325018
% Menghitung 1/1 + 1/2 + 1/3 + ... + 1/20
% a. Perhitungan secara eksak
% b. Masing-masing pembagian dibulatkan
% c. Tanpa looping (menggunakan fungsi sum)

N = 20;

% a. Perhitungan secara eksak
eksak = 0;
for i = 1:N
    eksak = eksak + 1/i;
end

%b. Masing-masing pembagian dibulatkan (4 desimal)
bulat = 0;
for i = 1:N
    bulat = bulat + round(1/i * 10000) / 10000;
end

%c. Tanpa looping (menggunakan fungsi sum)
tanpa_loop = sum(1./(1:N));

% --- Output ---
fprintf('a. Eksak              = %5.15f\n', eksak);
fprintf('b. Pembulatan tiap suku = %5.15f\n', bulat);
fprintf('c. Tanpa looping (sum)  = %5.15f\n\n', tanpa_loop);

fprintf('--- Perbandingan Galat ---\n');
fprintf('%-20s | %18s | %18s | %18s | %18s\n', ...
        'Metode', 'Hasil', 'Error', 'Error Relatif', 'RPE (%)');
fprintf('%s\n', repmat('-', 1, 105));

% a. Eksak
fprintf('%-20s | %18.15f | %18.15f | %18.15f | %18.15f\n', ...
        'a. Eksak', eksak, 0, 0, 0);

% b. Pembulatan
err_b = abs(eksak - bulat);
rel_b = err_b / eksak;
rpe_b = rel_b * 100;
fprintf('%-20s | %18.15f | %18.15f | %18.15f | %18.15f\n', ...
        'b. Pembulatan', bulat, err_b, rel_b, rpe_b);

% c. Tanpa looping
err_c = abs(eksak - tanpa_loop);
rel_c = err_c / eksak;
rpe_c = rel_c * 100;
fprintf('%-20s | %18.15f | %18.15f | %18.15f | %18.15f\n', ...
        'c. Tanpa looping', tanpa_loop, err_c, rel_c, rpe_c);
