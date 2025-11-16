% Script para questão 6.2.i - Usando FOR
% Gera y[n] = n*sin(n/2) para 0 <= n <= 10

clear;
clc;

n_max = 10;
n = 0:n_max;
y = zeros(size(n));

% Usando laço FOR
for i = 1:length(n)
    y(i) = n(i) * sin(n(i) / 2);
end

% Plotando o resultado
figure;
stem(n, y, 'b', 'LineWidth', 1.5);
title('y[n] = n \cdot sin(n/2) - Usando FOR');
xlabel('n');
ylabel('y[n]');
grid on;

fprintf('Valores de y[n]:\n');
for i = 1:length(n)
    fprintf('y[%d] = %.4f\n', n(i), y(i));
end
