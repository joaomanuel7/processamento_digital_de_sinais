% Script para regenerar figuras de imagens (5.2, 5.3, 5.4)
% Gera diretamente em JPEG usando colormap adequado

clear all;
close all;
clc;

fprintf('Regenerando figuras de imagens...\n\n');

% Criar diretório se não existir
if ~exist('figuras/jpeg', 'dir')
    mkdir('figuras/jpeg');
end

% Configurar toolkit
graphics_toolkit('gnuplot');

%% 5.1 e 5.2 - Leitura e visualização de imagem
fprintf('5.2 - Carregando e salvando imagem original...\n');
try
    [m, n] = imread('teste.bmp');
    Y_img = ind2gray(m, n);
    
    % Criar figura e salvar
    fig = figure('visible', 'off');
    imshow(Y_img);
    title('Imagem teste.bmp (escala de cinza)');
    colormap(gray);
    
    % Salvar usando método direto
    imwrite(Y_img, 'figuras/jpeg/Questão_5.2_-_Imagem_Original.jpg', 'jpg', 'Quality', 95);
    close(fig);
    
    fprintf('✓ Questão_5.2_-_Imagem_Original.jpg salva\n');
catch err
    fprintf('✗ Erro: %s\n', err.message);
end

%% 5.3 - Binarização da imagem
fprintf('5.3 - Gerando imagem binarizada...\n');
try
    limiar = 0.5;
    Y_bin = binariza(Y_img, limiar);
    
    % Salvar diretamente
    imwrite(Y_bin, 'figuras/jpeg/Questão_5.3_-_Imagem_Binarizada.jpg', 'jpg', 'Quality', 95);
    
    fprintf('✓ Questão_5.3_-_Imagem_Binarizada.jpg salva\n');
catch err
    fprintf('✗ Erro: %s\n', err.message);
end

%% 5.4 - Binarização usando operador lógico
fprintf('5.4 - Gerando binarização por operador...\n');
try
    Y1 = Y_img > 0.5;
    
    % Salvar diretamente
    imwrite(Y1, 'figuras/jpeg/Questão_5.4_-_Binarização_por_Operador.jpg', 'jpg', 'Quality', 95);
    
    fprintf('✓ Questão_5.4_-_Binarização_por_Operador.jpg salva\n');
catch err
    fprintf('✗ Erro: %s\n', err.message);
end

fprintf('\n=== CONCLUÍDO ===\n');
fprintf('Imagens regeneradas em figuras/jpeg/\n');
