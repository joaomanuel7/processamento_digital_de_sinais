% Questão 2 - Operações com Vetores
% Trabalho 1 - Processamento Digital de Sinais

clear all;
close all;
clc;

fprintf('===== QUESTÃO 2 - OPERAÇÕES COM VETORES =====\n\n');

%% 2.1 - Criando vetor x de 0 a 25

fprintf('2.1 - Criando vetor x de 0 a 25:\n');
x = 0:1:25;
fprintf('Vetor x criado com %d elementos\n\n', length(x));

%% 2.2 - Criando vetor y de 24 a 0

fprintf('2.2 - Criando vetor y de 24 a 0:\n');
y = 24:-1:0;
fprintf('Vetor y criado com %d elementos\n\n', length(y));

%% 2.3 - Operações com vetores x, y e z

fprintf('2.3 - Operações com vetores x, y e z:\n');
z = zeros(1, 100);
n = 0:99;
z(1:26) = x;
z(27:51) = y;

figure('Name', 'Questão 2.3 - Vetor z');
plot(n, z, 'b-', 'LineWidth', 1.5);
axis([-2 100 -1 30]);
grid on;
title('Gráfico do vetor z');
xlabel('Índice n');
ylabel('Valor de z[n]');

fprintf('Análise do código:\n');
fprintf('- n = 0:99: Cria um vetor de índices de 0 a 99\n');
fprintf('- z(1:26) = x: Atribui os valores de x às primeiras 26 posições de z\n');
fprintf('- z(27:51) = y: Atribui os valores de y às posições 27 a 51 de z\n');
fprintf('- plot(n,z): Plota o gráfico de z em função de n\n');
fprintf('- axis([-2 100 -1 30]): Define os limites dos eixos\n');
fprintf('- grid: Ativa a grade no gráfico\n\n');

%% 2.4 - Gerando sinal periódico com 3 períodos

fprintf('2.4 - Gerando sinal periódico com 3 períodos:\n');
zp = [z z z];
np = 0:length(zp)-1;

figure('Name', 'Questão 2.4 - Sinal Periódico');
stem(np, zp, 'b', 'LineWidth', 1.2);
title('Sinal periódico com 3 períodos');
xlabel('Amostra n');
ylabel('Amplitude');
grid on;

periodo_fundamental = length(z);
fs = 8000;
freq_fundamental = fs / periodo_fundamental;
fprintf('Período fundamental: %d amostras\n', periodo_fundamental);
fprintf('Frequência de amostragem: %d Hz\n', fs);
fprintf('Frequência fundamental: %.2f Hz\n\n', freq_fundamental);

fprintf('===== QUESTÃO 2 CONCLUÍDA =====\n');
