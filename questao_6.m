% Questão 6 - Atividades
% Trabalho 1 - Processamento Digital de Sinais

clear all;
close all;
clc;

fprintf('===== QUESTÃO 6 - ATIVIDADES =====\n\n');

%% 6.1 - Comando linspace

fprintf('6.1 - Comando linspace:\n');
fprintf('linspace(x1, x2, N) gera N pontos igualmente espaçados\n');
fprintf('entre x1 e x2, incluindo ambos os extremos.\n');
fprintf('Exemplo: linspace(0, 10, 5) gera [0, 2.5, 5, 7.5, 10]\n\n');

%% 6.2.i - Gerando y[n] = n*sin(n/2)

fprintf('6.2.i - Gerando y[n] = n*sin(n/2) para 0 <= n <= 10:\n');
n_range = 0:10;
y_sin = n_range .* sin(n_range / 2);

figure('Name', 'Questão 6.2.i - y[n] = n*sin(n/2)');
subplot(2, 1, 1);
stem(n_range, y_sin, 'b', 'LineWidth', 1.5);
title('y[n] = n \cdot sin(n/2)');
xlabel('n');
ylabel('y[n]');
grid on;

subplot(2, 1, 2);
plot(n_range, y_sin, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 6);
title('y[n] = n \cdot sin(n/2) (visualização contínua)');
xlabel('n');
ylabel('y[n]');
grid on;

fprintf('Sinal y[n] gerado e plotado\n\n');

%% 6.2.ii - Gerando z[n] = 0.5^n e j^(n/2)

fprintf('6.2.ii - Gerando z[n] = 0.5^n e j^n/2 para 0 <= n <= 10:\n');
z_exp = 0.5 .^ n_range;
z_complex = exp(1j * n_range / 2);

figure('Name', 'Questão 6.2.ii - z[n] = 0.5^n');
stem(n_range, z_exp, 'b', 'LineWidth', 1.5);
title('z[n] = 0.5^n');
xlabel('n');
ylabel('z[n]');
grid on;

figure('Name', 'Questão 6.2.ii - j^(n/2)');
subplot(2, 1, 1);
stem(n_range, real(z_complex), 'b', 'LineWidth', 1.5);
title('Parte Real de j^{n/2}');
xlabel('n');
ylabel('Real');
grid on;

subplot(2, 1, 2);
stem(n_range, imag(z_complex), 'r', 'LineWidth', 1.5);
title('Parte Imaginária de j^{n/2}');
xlabel('n');
ylabel('Imaginário');
grid on;

fprintf('Sinais z[n] gerados e plotados\n\n');

fprintf('===== QUESTÃO 6 CONCLUÍDA =====\n');
