% Script para questão 6.2.i - Usando operação vetorial
% Gera y[n] = n*sin(n/2) para 0 <= n <= 10

clear;
clc;

n = 0:10;

% Usando operação vetorial
y = n .* sin(n / 2);

% Plotando o resultado
figure;
stem(n, y, 'r', 'LineWidth', 1.5);
title('y[n] = n \cdot sin(n/2) - Usando operação vetorial');
xlabel('n');
ylabel('y[n]');
grid on;

fprintf('Valores de y[n]:\n');
for i = 1:length(n)
    fprintf('y[%d] = %.4f\n', n(i), y(i));
end
