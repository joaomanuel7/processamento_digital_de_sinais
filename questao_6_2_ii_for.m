% Script para questão 6.2.ii - Usando FOR
% Gera z[n] = 0.5^n e j^(n/2) para 0 <= n <= 10

clear;
clc;

n_max = 10;
n = 0:n_max;
z1 = zeros(size(n));
z2 = zeros(size(n));

% Usando laço FOR para z[n] = 0.5^n
fprintf('Gerando z[n] = 0.5^n usando FOR:\n');
for i = 1:length(n)
    z1(i) = 0.5^n(i);
end

% Usando laço FOR para w[n] = j^(n/2)
fprintf('Gerando w[n] = j^(n/2) usando FOR:\n');
for i = 1:length(n)
    z2(i) = exp(1j * n(i) / 2);
end

% Plotando z[n] = 0.5^n
figure;
stem(n, z1, 'b', 'LineWidth', 1.5);
title('z[n] = 0.5^n - Usando FOR');
xlabel('n');
ylabel('z[n]');
grid on;

fprintf('\nValores de z[n] = 0.5^n:\n');
for i = 1:length(n)
    fprintf('z[%d] = %.4f\n', n(i), z1(i));
end

% Plotando j^(n/2)
figure;
subplot(2, 1, 1);
stem(n, real(z2), 'b', 'LineWidth', 1.5);
title('Parte Real de j^{n/2} - Usando FOR');
xlabel('n');
ylabel('Real');
grid on;

subplot(2, 1, 2);
stem(n, imag(z2), 'r', 'LineWidth', 1.5);
title('Parte Imaginária de j^{n/2} - Usando FOR');
xlabel('n');
ylabel('Imaginário');
grid on;

fprintf('\nValores de w[n] = j^(n/2):\n');
for i = 1:length(n)
    fprintf('w[%d] = %.4f + %.4fj\n', n(i), real(z2(i)), imag(z2(i)));
end
