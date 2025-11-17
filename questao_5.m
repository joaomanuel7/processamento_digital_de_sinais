% Questão 5 - Operações com Arquivos de Imagem
% Trabalho 1 - Processamento Digital de Sinais

clear all;
close all;
clc;

fprintf('===== QUESTÃO 5 - OPERAÇÕES COM ARQUIVOS DE IMAGEM =====\n\n');

%% 5.1 e 5.2 - Leitura e visualização de imagem

fprintf('5.1 e 5.2 - Leitura e visualização de imagem:\n');
try
    [m, n] = imread('teste.bmp');
    Y_img = ind2gray(m, n);
    
    figure('Name', 'Questão 5.2 - Imagem Original');
    imshow(Y_img);
    title('Imagem teste.bmp (escala de cinza)');
    
    fprintf('Imagem teste.bmp carregada: %dx%d pixels\n\n', size(Y_img, 1), size(Y_img, 2));
    
    %% 5.3 - Binarização da imagem
    
    fprintf('5.3 - Binarização da imagem:\n');
    fprintf('Testando função binariza...\n');
    
    limiar = 0.5;
    Y_bin = binariza(Y_img, limiar);
    
    figure('Name', 'Questão 5.3 - Imagem Binarizada');
    imshow(Y_bin);
    title(sprintf('Imagem binarizada (limiar = %.2f)', limiar));
    
    fprintf('Imagem binarizada com limiar %.2f\n\n', limiar);
    
    %% 5.4 - Binarização usando operador lógico
    
    fprintf('5.4 - Binarização usando operador lógico:\n');
    Y1 = Y_img > 0.5;
    
    figure('Name', 'Questão 5.4 - Binarização por Operador');
    imshow(Y1);
    title('Binarização usando Y > 0.5');
    
    fprintf('Comentário: O operador > cria uma matriz lógica onde cada\n');
    fprintf('elemento é 1 (branco) se Y_img(i,j) > 0.5, ou 0 (preto) caso contrário.\n');
    fprintf('Isso é equivalente à função binariza, mas mais eficiente.\n');
    fprintf('MATLAB/Octave otimizam operações vetoriais/matriciais.\n\n');
    
catch
    fprintf('Erro ao carregar imagem teste.bmp\n\n');
end

%% 5.5 - Visualização da imagem teste1.bmp

fprintf('5.5 - Visualização da imagem teste1.bmp:\n');
try
    [m1, n1] = imread('teste1.bmp');
    Y_img1 = ind2gray(m1, n1);
    
    figure('Name', 'Questão 5.5 - Mesh');
    mesh(Y_img1);
    title('Visualização mesh - teste1.bmp');
    xlabel('X');
    ylabel('Y');
    zlabel('Intensidade');
    colorbar;
    
    figure('Name', 'Questão 5.5 - Contour');
    contour(Y_img1, 20);
    title('Visualização contour - teste1.bmp');
    xlabel('X');
    ylabel('Y');
    colorbar;
    
    fprintf('mesh: Cria superfície 3D mostrando intensidade dos pixels\n');
    fprintf('contour: Cria mapa de contorno com curvas de nível\n');
    fprintf('Ambas as funções permitem analisar variações de intensidade\n\n');
    
catch
    fprintf('Erro ao carregar imagem teste1.bmp\n\n');
end

fprintf('===== QUESTÃO 5 CONCLUÍDA =====\n');
