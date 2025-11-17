% Trabalho 1 - Processamento Digital de Sinais
clear all; close all; clc;

% ============================================================================
% QUESTÃO 2 - OPERAÇÕES COM VETORES
% ============================================================================
x = 0:1:25;
y = 24:-1:0;
z = zeros(1, 100);
n = 0:99;
z(1:26) = x;
z(27:51) = y;
figure('Name', 'Questão 2.3');
plot(n, z, 'b-', 'LineWidth', 1.5);
axis([-2 100 -1 30]);
grid on;
title('Gráfico do vetor z');
xlabel('n');
ylabel('z[n]');
zp = [z z z];
np = 0:length(zp)-1;
figure('Name', 'Questão 2.4');
stem(np, zp, 'b', 'LineWidth', 1.2);
title('Sinal periódico com 3 períodos');
xlabel('n');
ylabel('Amplitude');
grid on;

% ============================================================================
% QUESTÃO 3 - OPERAÇÕES COM MATRIZES
% ============================================================================
A = [2 3 4; 4 4 4; 8 9 0];
C = [1 2; 3 4; 1 1];
resultado_AC = A * C;
D = ones(3, 3);
resultado_A_D = A .* D;
M = ones(1500, 1500);
tic;
M_for = M;
for i = 1:size(M, 1)
    for j = 1:size(M, 2)
        M_for(i, j) = M_for(i, j) * 5;
    end
end
tempo_for = toc;
tic;
M_vet = M * 5;
tempo_vet = toc;
ganho = tempo_for / tempo_vet;
X = [4 8 12; 2 6 10];
M_media = mean(X, 2);
X1 = X - M_media * ones(1, 3);
media_X1 = mean(X1, 2);

% ============================================================================
% QUESTÃO 4 - OPERAÇÕES COM ARQUIVOS DE ÁUDIO
% ============================================================================
try
    [Y, FS] = audioread('musica.wav');
    figure('Name', 'Questão 4.1');
    plot(Y);
    title('Forma de onda - musica.wav');
    xlabel('Amostra');
    ylabel('Amplitude');
    grid on;
catch
    warning('Arquivo musica.wav não encontrado');
end

% ============================================================================
% QUESTÃO 5 - OPERAÇÕES COM ARQUIVOS DE IMAGEM
% ============================================================================
try
    [m, n] = imread('teste.bmp');
    Y_img = ind2gray(m, n);
    figure('Name', 'Questão 5.2');
    imshow(Y_img);
    title('Imagem teste.bmp');
    limiar = 0.5;
    Y_bin = binariza(Y_img, limiar);
    figure('Name', 'Questão 5.3');
    imshow(Y_bin);
    title(sprintf('Binarizada (limiar = %.2f)', limiar));
    Y1 = Y_img > 0.5;
    figure('Name', 'Questão 5.4');
    imshow(Y1);
    title('Binarização com operador >');
catch
    warning('Erro ao carregar teste.bmp');
end
try
    [m1, n1] = imread('teste1.bmp');
    Y_img1 = ind2gray(m1, n1);
    figure('Name', 'Questão 5.5 - Mesh');
    mesh(Y_img1);
    title('Visualização mesh');
    xlabel('X');
    ylabel('Y');
    zlabel('Intensidade');
    colorbar;
    figure('Name', 'Questão 5.5 - Contour');
    contour(Y_img1, 20);
    title('Visualização contour');
    xlabel('X');
    ylabel('Y');
    colorbar;
catch
    warning('Erro ao carregar teste1.bmp');
end

% ============================================================================
% QUESTÃO 6 - ATIVIDADES
% ============================================================================
n_range = 0:10;
y_sin = n_range .* sin(n_range / 2);
figure('Name', 'Questão 6.2.i');
subplot(2, 1, 1);
stem(n_range, y_sin, 'b', 'LineWidth', 1.5);
title('y[n] = n \cdot sin(n/2)');
xlabel('n');
ylabel('y[n]');
grid on;
subplot(2, 1, 2);
plot(n_range, y_sin, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 6);
title('y[n] = n \cdot sin(n/2)');
xlabel('n');
ylabel('y[n]');
grid on;
z_exp = 0.5 .^ n_range;
z_complex = exp(1j * n_range / 2);
figure('Name', 'Questão 6.2.ii - z[n]');
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
