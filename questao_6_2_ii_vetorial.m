% Script para questão 6.2.ii - Usando operação vetorial
% Gera z[n] = 0.5^n e j^(n/2) para 0 <= n <= 10

clear;
clc;

n = 0:10;

% Usando operação vetorial para z[n] = 0.5^n
z1 = 0.5 .^ n;

% Usando operação vetorial para w[n] = j^(n/2)
z2 = exp(1j * n / 2);

% Plotando z[n] = 0.5^n
figure;
stem(n, z1, 'b', 'LineWidth', 1.5);
title('z[n] = 0.5^n - Usando operação vetorial');
xlabel('n');
ylabel('z[n]');
grid on;

fprintf('Valores de z[n] = 0.5^n:\n');
for i = 1:length(n)
    fprintf('z[%d] = %.4f\n', n(i), z1(i));
end

% Plotando j^(n/2)
figure;
subplot(2, 1, 1);
stem(n, real(z2), 'b', 'LineWidth', 1.5);
title('Parte Real de j^{n/2} - Usando operação vetorial');
xlabel('n');
ylabel('Real');
grid on;

subplot(2, 1, 2);
stem(n, imag(z2), 'r', 'LineWidth', 1.5);
title('Parte Imaginária de j^{n/2} - Usando operação vetorial');
xlabel('n');
ylabel('Imaginário');
grid on;

fprintf('\nValores de w[n] = j^(n/2):\n');
for i = 1:length(n)
    fprintf('w[%d] = %.4f + %.4fj\n', n(i), real(z2(i)), imag(z2(i)));
end
