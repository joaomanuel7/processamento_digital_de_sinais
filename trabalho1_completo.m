% Trabalho 1 - Processamento Digital de Sinais% Trabalho 1 - Processamento Digital de Sinais% Trabalho 1 - Processamento Digital de Sinais% Trabalho 1 - Processamento Digital de Sinais

clear all; close all; clc;



% ============================================================================

% QUESTÃO 2 - OPERAÇÕES COM VETORESclear all;% MATLAB/Octave aplicado ao PDS% MATLAB/Octave aplicado ao PDS

% ============================================================================

% 2.1close all;

x = 0:1:25;

clc;

% 2.2

y = 24:-1:0;



% 2.3%% Questão 2.1 - Vetor xclear all;clear all;

z = zeros(1, 100);

n = 0:99;x = 0:1:25;

z(1:26) = x;

z(27:51) = y;close all;close all;



figure('Name', 'Questão 2.3');%% Questão 2.2 - Vetor y

plot(n, z, 'b-', 'LineWidth', 1.5);

axis([-2 100 -1 30]);y = 24:-1:0;clc;clc;

grid on;

title('Gráfico do vetor z');

xlabel('n'); ylabel('z[n]');

%% Questão 2.3 - Operações com vetores

% 2.4

zp = [z z z];z = zeros(1, 100);

np = 0:length(zp)-1;

n = 0:99;fprintf('===== TRABALHO 1 - PDS =====\n\n');fprintf('===== TRABALHO 1 - PDS =====\n\n');

figure('Name', 'Questão 2.4');

stem(np, zp, 'b', 'LineWidth', 1.2);z(1:26) = x;

title('Sinal periódico com 3 períodos');

xlabel('n'); ylabel('Amplitude');z(27:51) = y;

grid on;



% ============================================================================

% QUESTÃO 3 - OPERAÇÕES COM MATRIZESfigure('Name', 'Questão 2.3');%% 2 - Operações com Vetores%% 2 - Operações com Vetores

% ============================================================================

% 3.1plot(n, z, 'b-', 'LineWidth', 1.5);

A = [2 3 4; 4 4 4; 8 9 0];

C = [1 2; 3 4; 1 1];axis([-2 100 -1 30]);



% 3.2grid on;

resultado_AC = A * C;

title('Gráfico do vetor z');fprintf('2.1 - Criando vetor x de 0 a 25:\n');fprintf('2.1 - Criando vetor x de 0 a 25:\n');

% 3.3

D = ones(3, 3);xlabel('Índice n');

resultado_A_D = A .* D;

ylabel('z[n]');x = 0:1:25;x = 0:1:25;

% 3.4 - Comparação FOR vs vetorial

M = ones(1500, 1500);



tic;%% Questão 2.4 - Sinal periódicofprintf('Vetor x criado com %d elementos\n\n', length(x));fprintf('Vetor x criado com %d elementos\n\n', length(x));

M_for = M;

for i = 1:size(M, 1)zp = [z z z];

    for j = 1:size(M, 2)

        M_for(i, j) = M_for(i, j) * 5;np = 0:length(zp)-1;

    end

end

tempo_for = toc;

figure('Name', 'Questão 2.4');fprintf('2.2 - Criando vetor y de 24 a 0:\n');fprintf('2.2 - Criando vetor y de 24 a 0:\n');

tic;

M_vet = M * 5;stem(np, zp, 'b', 'LineWidth', 1.2);

tempo_vet = toc;

title('Sinal periódico com 3 períodos');y = 24:-1:0;y = 24:-1:0;

ganho = tempo_for / tempo_vet;

xlabel('n');

% 3.5

X = [4 8 12; 2 6 10];ylabel('Amplitude');fprintf('Vetor y criado com %d elementos\n\n', length(y));fprintf('Vetor y criado com %d elementos\n\n', length(y));

M_media = mean(X, 2);

X1 = X - M_media * ones(1, 3);grid on;



% 3.6

media_X1 = mean(X1, 2);

%% Questão 3.1 - Matrizes A e C

% ============================================================================

% QUESTÃO 4 - OPERAÇÕES COM ARQUIVOS DE ÁUDIOA = [2 3 4; 4 4 4; 8 9 0];fprintf('2.3 - Operações com vetores x, y e z:\n');fprintf('2.3 - Operações com vetores x, y e z:\n');

% ============================================================================

% 4.1C = [1 2; 3 4; 1 1];

try

    [Y, FS] = audioread('musica.wav');z = zeros(1, 100);z = zeros(1, 100);

    

    figure('Name', 'Questão 4.1');%% Questão 3.2 - Multiplicação A*C

    plot(Y);

    title('Forma de onda - musica.wav');resultado_AC = A * C;n = 0:99;n = 0:99;

    xlabel('Amostra'); ylabel('Amplitude');

    grid on;

catch

    warning('Arquivo musica.wav não encontrado');%% Questão 3.3 - Multiplicação elemento a elementoz(1:26) = x;z(1:26) = x;

end

D = ones(3, 3);

% ============================================================================

% QUESTÃO 5 - OPERAÇÕES COM ARQUIVOS DE IMAGEMresultado_A_ponto_D = A .* D;z(27:51) = y;z(27:51) = y;

% ============================================================================

% 5.1 e 5.2

try

    [m, n] = imread('teste.bmp');%% Questão 3.4 - Comparação FOR vs vetorial

    Y_img = ind2gray(m, n);

    M = ones(1500, 1500);

    figure('Name', 'Questão 5.2');

    imshow(Y_img);figure('Name', 'Questão 2.3 - Vetor z');figure('Name', 'Questão 2.3 - Vetor z');

    title('Imagem teste.bmp');

    tic;

    % 5.3

    limiar = 0.5;M_for = M;plot(n, z, 'b-', 'LineWidth', 1.5);plot(n, z, 'b-', 'LineWidth', 1.5);

    Y_bin = binariza(Y_img, limiar);

    for i = 1:size(M, 1)

    figure('Name', 'Questão 5.3');

    imshow(Y_bin);    for j = 1:size(M, 2)axis([-2 100 -1 30]);axis([-2 100 -1 30]);

    title(sprintf('Binarizada (limiar = %.2f)', limiar));

            M_for(i, j) = M_for(i, j) * 5;

    % 5.4

    Y1 = Y_img > 0.5;    endgrid on;grid on;

    

    figure('Name', 'Questão 5.4');end

    imshow(Y1);

    title('Binarização com operador >');tempo_for = toc;title('Gráfico do vetor z');title('Gráfico do vetor z');

    

catch

    warning('Erro ao carregar teste.bmp');

endtic;xlabel('Índice n');xlabel('Índice n');



% 5.5M_vet = M * 5;

try

    [m1, n1] = imread('teste1.bmp');tempo_vet = toc;ylabel('Valor de z[n]');ylabel('Valor de z[n]');

    Y_img1 = ind2gray(m1, n1);

    

    figure('Name', 'Questão 5.5 - Mesh');

    mesh(Y_img1);ganho = tempo_for / tempo_vet;

    title('Visualização mesh');

    xlabel('X'); ylabel('Y'); zlabel('Intensidade');

    colorbar;

    %% Questão 3.5 - Operações com médiafprintf('Análise do código:\n');fprintf('Análise do código:\n');

    figure('Name', 'Questão 5.5 - Contour');

    contour(Y_img1, 20);X = [4 8 12; 2 6 10];

    title('Visualização contour');

    xlabel('X'); ylabel('Y');M_media = mean(X, 2);fprintf('- n = 0:99: Cria um vetor de índices de 0 a 99\n');fprintf('- n = 0:99: Cria um vetor de índices de 0 a 99\n');

    colorbar;

    X1 = X - M_media * ones(1, 3);

catch

    warning('Erro ao carregar teste1.bmp');fprintf('- z(1:26) = x: Atribui os valores de x às primeiras 26 posições de z\n');fprintf('- z(1:26) = x: Atribui os valores de x às primeiras 26 posições de z\n');

end

%% Questão 3.6 - Verificação

% ============================================================================

% QUESTÃO 6 - ATIVIDADESmedia_X1 = mean(X1, 2);fprintf('- z(27:51) = y: Atribui os valores de y às posições 27 a 51 de z\n');fprintf('- z(27:51) = y: Atribui os valores de y às posições 27 a 51 de z\n');

% ============================================================================

% 6.2.i - y[n] = n*sin(n/2)

n_range = 0:10;

y_sin = n_range .* sin(n_range / 2);%% Questão 4.1 - Leitura de áudiofprintf('- plot(n,z): Plota o gráfico de z em função de n\n');fprintf('- plot(n,z): Plota o gráfico de z em função de n\n');



figure('Name', 'Questão 6.2.i');try

subplot(2, 1, 1);

stem(n_range, y_sin, 'b', 'LineWidth', 1.5);    [Y, FS] = audioread('musica.wav');fprintf('- axis([-2 100 -1 30]): Define os limites dos eixos\n');fprintf('- axis([-2 100 -1 30]): Define os limites dos eixos\n');

title('y[n] = n \cdot sin(n/2)');

xlabel('n'); ylabel('y[n]');    

grid on;

    figure('Name', 'Questão 4.1');fprintf('- grid: Ativa a grade no gráfico\n\n');fprintf('- grid: Ativa a grade no gráfico\n\n');

subplot(2, 1, 2);

plot(n_range, y_sin, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 6);    plot(Y);

title('y[n] = n \cdot sin(n/2)');

xlabel('n'); ylabel('y[n]');    title('Forma de onda - musica.wav');

grid on;

    xlabel('Amostra');

% 6.2.ii - z[n] = 0.5^n e j^(n/2)

z_exp = 0.5 .^ n_range;    ylabel('Amplitude');fprintf('2.4 - Gerando sinal periódico com 3 períodos:\n');fprintf('2.4 - Gerando sinal periódico com 3 períodos:\n');

z_complex = exp(1j * n_range / 2);

    grid on;

figure('Name', 'Questão 6.2.ii - z[n]');

stem(n_range, z_exp, 'b', 'LineWidth', 1.5);catchzp = [z z z];zp = [z z z];

title('z[n] = 0.5^n');

xlabel('n'); ylabel('z[n]');    warning('Arquivo musica.wav não encontrado');

grid on;

endnp = 0:length(zp)-1;np = 0:length(zp)-1;

figure('Name', 'Questão 6.2.ii - j^(n/2)');

subplot(2, 1, 1);

stem(n_range, real(z_complex), 'b', 'LineWidth', 1.5);

title('Parte Real de j^{n/2}');%% Questão 5.1 e 5.2 - Leitura de imagem

xlabel('n'); ylabel('Real');

grid on;try



subplot(2, 1, 2);    [m, n] = imread('teste.bmp');figure('Name', 'Questão 2.4 - Sinal Periódico');figure('Name', 'Questão 2.4 - Sinal Periódico');

stem(n_range, imag(z_complex), 'r', 'LineWidth', 1.5);

title('Parte Imaginária de j^{n/2}');    Y_img = ind2gray(m, n);

xlabel('n'); ylabel('Imaginário');

grid on;    stem(np, zp, 'b', 'LineWidth', 1.2);stem(np, zp, 'b', 'LineWidth', 1.2);


    figure('Name', 'Questão 5.2');

    imshow(Y_img);title('Sinal periódico com 3 períodos');title('Sinal periódico com 3 períodos');

    title('Imagem teste.bmp');

    xlabel('Amostra n');xlabel('Amostra n');

    %% Questão 5.3 - Binarização com função

    limiar = 0.5;ylabel('Amplitude');ylabel('Amplitude');

    Y_bin = binariza(Y_img, limiar);

    grid on;grid on;

    figure('Name', 'Questão 5.3');

    imshow(Y_bin);

    title(sprintf('Imagem binarizada (limiar = %.2f)', limiar));

    periodo_fundamental = length(z);periodo_fundamental = length(z);

    %% Questão 5.4 - Binarização com operador

    Y1 = Y_img > 0.5;fs = 8000;fs = 8000;

    

    figure('Name', 'Questão 5.4');freq_fundamental = fs / periodo_fundamental;freq_fundamental = fs / periodo_fundamental;

    imshow(Y1);

    title('Binarização com operador >');fprintf('Período fundamental: %d amostras\n', periodo_fundamental);fprintf('Período fundamental: %d amostras\n', periodo_fundamental);

    

catchfprintf('Frequência de amostragem: %d Hz\n', fs);fprintf('Frequência de amostragem: %d Hz\n', fs);

    warning('Erro ao carregar teste.bmp');

endfprintf('Frequência fundamental: %.2f Hz\n\n', freq_fundamental);fprintf('Frequência fundamental: %.2f Hz\n\n', freq_fundamental);



%% Questão 5.5 - Visualização 3D

try

    [m1, n1] = imread('teste1.bmp');%% 3 - Operações com Matrizes%% 3 - Operações com Matrizes

    Y_img1 = ind2gray(m1, n1);

    

    figure('Name', 'Questão 5.5 - Mesh');

    mesh(Y_img1);fprintf('3.1 - Definindo matrizes A e C:\n');fprintf('3.1 - Definindo matrizes A e C:\n');

    title('Visualização mesh');

    xlabel('X');A = [2 3 4; 4 4 4; 8 9 0];A = [2 3 4; 4 4 4; 8 9 0];

    ylabel('Y');

    zlabel('Intensidade');C = [1 2; 3 4; 1 1];C = [1 2; 3 4; 1 1];

    colorbar;

    fprintf('Matriz A (3x3):\n');fprintf('Matriz A (3x3):\n');

    figure('Name', 'Questão 5.5 - Contour');

    contour(Y_img1, 20);disp(A);disp(A);

    title('Visualização contour');

    xlabel('X');fprintf('Matriz C (3x2):\n');fprintf('Matriz C (3x2):\n');

    ylabel('Y');

    colorbar;disp(C);disp(C);

    

catch

    warning('Erro ao carregar teste1.bmp');

endfprintf('3.2 - Multiplicação A*C:\n');fprintf('3.2 - Multiplicação A*C:\n');



%% Questão 6.2.i - y[n] = n*sin(n/2)resultado_AC = A * C;resultado_AC = A * C;

n_range = 0:10;

y_sin = n_range .* sin(n_range / 2);disp(resultado_AC);disp(resultado_AC);



figure('Name', 'Questão 6.2.i');fprintf('Testando propriedade comutativa (C*A):\n');fprintf('Testando propriedade comutativa (C*A):\n');

subplot(2, 1, 1);

stem(n_range, y_sin, 'b', 'LineWidth', 1.5);trytry

title('y[n] = n \cdot sin(n/2)');

xlabel('n');    resultado_CA = C * A;    resultado_CA = C * A;

ylabel('y[n]');

grid on;    disp(resultado_CA);    disp(resultado_CA);



subplot(2, 1, 2);    fprintf('A propriedade comutativa NÃO vale para multiplicação de matrizes.\n');    fprintf('A propriedade comutativa NÃO vale para multiplicação de matrizes.\n');

plot(n_range, y_sin, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 6);

title('y[n] = n \cdot sin(n/2)');    fprintf('Mesmo quando ambas as operações são possíveis, A*C ≠ C*A em geral.\n\n');    fprintf('Mesmo quando ambas as operações são possíveis, A*C ≠ C*A em geral.\n\n');

xlabel('n');

ylabel('y[n]');catchcatch

grid on;

    fprintf('ERRO: Não é possível calcular C*A (dimensões incompatíveis).\n');    fprintf('ERRO: Não é possível calcular C*A (dimensões incompatíveis).\n');

%% Questão 6.2.ii - z[n] = 0.5^n e j^(n/2)

z_exp = 0.5 .^ n_range;    fprintf('A propriedade comutativa NÃO vale para multiplicação de matrizes.\n\n');    fprintf('A propriedade comutativa NÃO vale para multiplicação de matrizes.\n\n');

z_complex = exp(1j * n_range / 2);

endend

figure('Name', 'Questão 6.2.ii - z[n]');

stem(n_range, z_exp, 'b', 'LineWidth', 1.5);

title('z[n] = 0.5^n');

xlabel('n');fprintf('3.3 - Multiplicação elemento a elemento:\n');fprintf('3.3 - Multiplicação elemento a elemento:\n');

ylabel('z[n]');

grid on;trytry



figure('Name', 'Questão 6.2.ii - j^(n/2)');    resultado_A_ponto_C = A .* C;    resultado_A_ponto_C = A .* C;

subplot(2, 1, 1);

stem(n_range, real(z_complex), 'b', 'LineWidth', 1.5);    fprintf('A.*C resulta em erro (dimensões incompatíveis: 3x3 e 3x2)\n\n');    fprintf('A.*C resulta em erro (dimensões incompatíveis: 3x3 e 3x2)\n\n');

title('Parte Real de j^{n/2}');

xlabel('n');catchcatch

ylabel('Real');

grid on;    fprintf('ERRO: A.*C não é possível (dimensões incompatíveis)\n\n');    fprintf('ERRO: A.*C não é possível (dimensões incompatíveis)\n\n');



subplot(2, 1, 2);endend

stem(n_range, imag(z_complex), 'r', 'LineWidth', 1.5);

title('Parte Imaginária de j^{n/2}');

xlabel('n');

ylabel('Imaginário');D = ones(3, 3);D = ones(3, 3);

grid on;

resultado_A_ponto_D = A .* D;resultado_A_ponto_D = A .* D;

fprintf('Matriz D (3x3 de uns):\n');fprintf('Matriz D (3x3 de uns):\n');

disp(D);disp(D);

fprintf('A.*D:\n');fprintf('A.*D:\n');

disp(resultado_A_ponto_D);disp(resultado_A_ponto_D);

fprintf('Explicação: O operador .* realiza multiplicação elemento a elemento.\n');fprintf('Explicação: O operador .* realiza multiplicação elemento a elemento.\n');

fprintf('Como D contém apenas 1s, A.*D retorna a própria matriz A.\n');fprintf('Como D contém apenas 1s, A.*D retorna a própria matriz A.\n');

fprintf('Para a operação ser válida, as matrizes devem ter as mesmas dimensões.\n\n');fprintf('Para a operação ser válida, as matrizes devem ter as mesmas dimensões.\n\n');



fprintf('3.4 - Comparação de eficiência: FOR vs operação vetorial\n');fprintf('3.4 - Comparação de eficiência: FOR vs operação vetorial\n');

M = ones(1500, 1500);M = ones(1500, 1500);



fprintf('Multiplicando por 5 usando FOR...\n');fprintf('Multiplicando por 5 usando FOR...\n');

tic;tic;

M_for = M;M_for = M;

for i = 1:size(M, 1)for i = 1:size(M, 1)

    for j = 1:size(M, 2)    for j = 1:size(M, 2)

        M_for(i, j) = M_for(i, j) * 5;        M_for(i, j) = M_for(i, j) * 5;

    end    end

endend

tempo_for = toc;tempo_for = toc;

fprintf('Tempo com FOR: %.4f segundos\n', tempo_for);fprintf('Tempo com FOR: %.4f segundos\n', tempo_for);



fprintf('Multiplicando por 5 usando operação vetorial...\n');fprintf('Multiplicando por 5 usando operação vetorial...\n');

tic;tic;

M_vet = M * 5;M_vet = M * 5;

tempo_vet = toc;tempo_vet = toc;

fprintf('Tempo com operação vetorial: %.4f segundos\n', tempo_vet);fprintf('Tempo com operação vetorial: %.4f segundos\n', tempo_vet);



fprintf('Ganho de velocidade: %.2fx mais rápido\n', tempo_for / tempo_vet);fprintf('Ganho de velocidade: %.2fx mais rápido\n', tempo_for / tempo_vet);

fprintf('Conclusão: Operações vetoriais são MUITO mais eficientes que laços FOR.\n');fprintf('Conclusão: Operações vetoriais são MUITO mais eficientes que laços FOR.\n');

fprintf('MATLAB/Octave são otimizados para operações matriciais.\n\n');fprintf('MATLAB/Octave são otimizados para operações matriciais.\n\n');



fprintf('3.5 - Operações com média:\n');fprintf('3.5 - Operações com média:\n');

X = [4 8 12; 2 6 10];X = [4 8 12; 2 6 10];

fprintf('Matriz X (2x3):\n');fprintf('Matriz X (2x3):\n');

disp(X);disp(X);



M_media = mean(X, 2);M_media = mean(X, 2);

fprintf('Média de cada linha (M = mean(X,2)):\n');fprintf('Média de cada linha (M = mean(X,2)):\n');

disp(M_media);disp(M_media);



X1 = X - M_media * ones(1, 3);X1 = X - M_media * ones(1, 3);

fprintf('X1 = X - M*ones(1,3):\n');fprintf('X1 = X - M*ones(1,3):\n');

disp(X1);disp(X1);



fprintf('3.6 - Diferenças entre X e X1:\n');fprintf('3.6 - Diferenças entre X e X1:\n');

fprintf('X: Matriz original com valores arbitrários\n');fprintf('X: Matriz original com valores arbitrários\n');

fprintf('X1: Matriz centralizada (média de cada linha é 0)\n');fprintf('X1: Matriz centralizada (média de cada linha é 0)\n');

fprintf('M*ones(1,3) replica o vetor de médias em 3 colunas\n');fprintf('M*ones(1,3) replica o vetor de médias em 3 colunas\n');

fprintf('Ao subtrair de X, cada linha de X1 tem média zero.\n');fprintf('Ao subtrair de X, cada linha de X1 tem média zero.\n');

fprintf('Verificando médias de X1:\n');fprintf('Verificando médias de X1:\n');

disp(mean(X1, 2));disp(mean(X1, 2));

fprintf('(valores próximos a zero devido a erros de arredondamento)\n\n');fprintf('(valores próximos a zero devido a erros de arredondamento)\n\n');



%% 4 - Operações com Arquivos de Áudio%% 4 - Operações com Arquivos de Áudio



fprintf('4.1 - Leitura e reprodução de arquivo de áudio:\n');fprintf('4.1 - Leitura e reprodução de arquivo de áudio:\n');

trytry

    [Y, FS] = audioread('musica.wav');    [Y, FS] = audioread('musica.wav');

    BITS = 16;    BITS = 16;

        

    fprintf('Arquivo musica.wav carregado com sucesso\n');    fprintf('Arquivo musica.wav carregado com sucesso\n');

    fprintf('Taxa de amostragem: %d Hz\n', FS);    fprintf('Taxa de amostragem: %d Hz\n', FS);

    fprintf('Número de amostras: %d\n', length(Y));    fprintf('Número de amostras: %d\n', length(Y));

    fprintf('Duração: %.2f segundos\n', length(Y)/FS);    fprintf('Duração: %.2f segundos\n', length(Y)/FS);

        

    figure('Name', 'Questão 4.1 - Arquivo de Áudio');    figure('Name', 'Questão 4.1 - Arquivo de Áudio');

    plot(Y);    plot(Y);

    title('Forma de onda - musica.wav');    title('Forma de onda - musica.wav');

    xlabel('Amostra');    xlabel('Amostra');

    ylabel('Amplitude');    ylabel('Amplitude');

    grid on;    grid on;

        

    fprintf('\nExplicação das funções:\n');    fprintf('\nExplicação das funções:\n');

    fprintf('audioread(arquivo): Lê arquivo de áudio e retorna:\n');    fprintf('audioread(arquivo): Lê arquivo de áudio e retorna:\n');

    fprintf('  - Y: vetor/matriz com as amostras de áudio\n');    fprintf('  - Y: vetor/matriz com as amostras de áudio\n');

    fprintf('  - FS: frequência de amostragem em Hz\n');    fprintf('  - FS: frequência de amostragem em Hz\n');

    fprintf('soundsc(Y,FS): Reproduz o áudio normalizado\n');    fprintf('soundsc(Y,FS): Reproduz o áudio normalizado\n');

    fprintf('  - Y: vetor de amostras\n');    fprintf('  - Y: vetor de amostras\n');

    fprintf('  - FS: taxa de amostragem\n');    fprintf('  - FS: taxa de amostragem\n');

    fprintf('audiowrite(arquivo,Y,FS): Grava áudio em arquivo\n\n');    fprintf('audiowrite(arquivo,Y,FS): Grava áudio em arquivo\n\n');

        

    fprintf('Reproduzindo áudio original...\n');    fprintf('Reproduzindo áudio original...\n');

    % soundsc(Y, FS);  % Comentado para evitar erros de hardware    soundsc(Y, FS);

    pause(2);    pause(2);

        

    fprintf('\n4.2 - Alterando parâmetros FS:\n');    fprintf('\n4.2 - Alterando parâmetros FS:\n');

    fprintf('Reproduzindo com FS/2 (metade da frequência)...\n');    fprintf('Reproduzindo com FS/2 (metade da frequência)...\n');

    % soundsc(Y, FS/2);  % Comentado para evitar erros de hardware    soundsc(Y, FS/2);

    pause(2);    pause(2);

    fprintf('Efeito: Som mais grave e mais lento\n\n');    fprintf('Efeito: Som mais grave e mais lento\n\n');

        

    fprintf('Reproduzindo com FS*2 (dobro da frequência)...\n');    fprintf('Reproduzindo com FS*2 (dobro da frequência)...\n');

    % soundsc(Y, FS*2);  % Comentado para evitar erros de hardware    soundsc(Y, FS*2);

    pause(2);    pause(2);

    fprintf('Efeito: Som mais agudo e mais rápido\n\n');    fprintf('Efeito: Som mais agudo e mais rápido\n\n');

        

    fprintf('Explicação: A frequência de amostragem determina a velocidade\n');    fprintf('Explicação: A frequência de amostragem determina a velocidade\n');

    fprintf('de reprodução. FS menor deixa o som mais lento e grave.\n');    fprintf('de reprodução. FS menor deixa o som mais lento e grave.\n');

    fprintf('FS maior deixa o som mais rápido e agudo.\n\n');    fprintf('FS maior deixa o som mais rápido e agudo.\n\n');

        

catchcatch

    fprintf('Arquivo musica.wav não encontrado ou erro na leitura\n\n');    fprintf('Arquivo musica.wav não encontrado ou erro na leitura\n\n');

endend



%% 5 - Operações com Arquivos de Imagem%% 5 - Operações com Arquivos de Imagem



fprintf('5.1 e 5.2 - Leitura e visualização de imagem:\n');fprintf('5.1 e 5.2 - Leitura e visualização de imagem:\n');

trytry

    [m, n] = imread('teste.bmp');    [m, n] = imread('teste.bmp');

    Y_img = ind2gray(m, n);    Y_img = ind2gray(m, n);

        

    figure('Name', 'Questão 5.2 - Imagem Original');    figure('Name', 'Questão 5.2 - Imagem Original');

    imshow(Y_img);    imshow(Y_img);

    title('Imagem teste.bmp (escala de cinza)');    title('Imagem teste.bmp (escala de cinza)');

        

    fprintf('Imagem teste.bmp carregada: %dx%d pixels\n\n', size(Y_img, 1), size(Y_img, 2));    fprintf('Imagem teste.bmp carregada: %dx%d pixels\n\n', size(Y_img, 1), size(Y_img, 2));

        

    fprintf('5.3 - Binarização da imagem:\n');    fprintf('5.3 - Binarização da imagem:\n');

    fprintf('Testando função binariza...\n');    fprintf('Testando função binariza...\n');

        

    limiar = 0.5;    limiar = 0.5;

    Y_bin = binariza(Y_img, limiar);    Y_bin = binariza(Y_img, limiar);

        

    figure('Name', 'Questão 5.3 - Imagem Binarizada');    figure('Name', 'Questão 5.3 - Imagem Binarizada');

    imshow(Y_bin);    imshow(Y_bin);

    title(sprintf('Imagem binarizada (limiar = %.2f)', limiar));    title(sprintf('Imagem binarizada (limiar = %.2f)', limiar));

        

    fprintf('Imagem binarizada com limiar %.2f\n\n', limiar);    fprintf('Imagem binarizada com limiar %.2f\n\n', limiar);

        

    fprintf('5.4 - Binarização usando operador lógico:\n');    fprintf('5.4 - Binarização usando operador lógico:\n');

    Y1 = Y_img > 0.5;    Y1 = Y_img > 0.5;

        

    figure('Name', 'Questão 5.4 - Binarização por Operador');    figure('Name', 'Questão 5.4 - Binarização por Operador');

    imshow(Y1);    imshow(Y1);

    title('Binarização usando Y > 0.5');    title('Binarização usando Y > 0.5');

        

    fprintf('Comentário: O operador > cria uma matriz lógica onde cada\n');    fprintf('Comentário: O operador > cria uma matriz lógica onde cada\n');

    fprintf('elemento é 1 (branco) se Y_img(i,j) > 0.5, ou 0 (preto) caso contrário.\n');    fprintf('elemento é 1 (branco) se Y_img(i,j) > 0.5, ou 0 (preto) caso contrário.\n');

    fprintf('Isso é equivalente à função binariza, mas mais eficiente.\n');    fprintf('Isso é equivalente à função binariza, mas mais eficiente.\n');

    fprintf('MATLAB/Octave otimizam operações vetoriais/matriciais.\n\n');    fprintf('MATLAB/Octave otimizam operações vetoriais/matriciais.\n\n');

        

catchcatch

    fprintf('Erro ao carregar imagem teste.bmp\n\n');    fprintf('Erro ao carregar imagem teste.bmp\n\n');

endend



fprintf('5.5 - Visualização da imagem teste1.bmp:\n');fprintf('5.5 - Visualização da imagem teste1.bmp:\n');

trytry

    [m1, n1] = imread('teste1.bmp');    [m1, n1] = imread('teste1.bmp');

    Y_img1 = ind2gray(m1, n1);    Y_img1 = ind2gray(m1, n1);

        

    figure('Name', 'Questão 5.5 - Mesh');    figure('Name', 'Questão 5.5 - Mesh');

    mesh(Y_img1);    mesh(Y_img1);

    title('Visualização mesh - teste1.bmp');    title('Visualização mesh - teste1.bmp');

    xlabel('X');    xlabel('X');

    ylabel('Y');    ylabel('Y');

    zlabel('Intensidade');    zlabel('Intensidade');

    colorbar;    colorbar;

        

    figure('Name', 'Questão 5.5 - Contour');    figure('Name', 'Questão 5.5 - Contour');

    contour(Y_img1, 20);    contour(Y_img1, 20);

    title('Visualização contour - teste1.bmp');    title('Visualização contour - teste1.bmp');

    xlabel('X');    xlabel('X');

    ylabel('Y');    ylabel('Y');

    colorbar;    colorbar;

        

    fprintf('mesh: Cria superfície 3D mostrando intensidade dos pixels\n');    fprintf('mesh: Cria superfície 3D mostrando intensidade dos pixels\n');

    fprintf('contour: Cria mapa de contorno com curvas de nível\n');    fprintf('contour: Cria mapa de contorno com curvas de nível\n');

    fprintf('Ambas as funções permitem analisar variações de intensidade\n\n');    fprintf('Ambas as funções permitem analisar variações de intensidade\n\n');

        

catchcatch

    fprintf('Erro ao carregar imagem teste1.bmp\n\n');    fprintf('Erro ao carregar imagem teste1.bmp\n\n');

endend



%% 6 - Atividades%% 6 - Atividades



fprintf('6.1 - Comando linspace:\n');fprintf('6.1 - Comando linspace:\n');

fprintf('linspace(x1, x2, N) gera N pontos igualmente espaçados\n');fprintf('linspace(x1, x2, N) gera N pontos igualmente espaçados\n');

fprintf('entre x1 e x2, incluindo ambos os extremos.\n');fprintf('entre x1 e x2, incluindo ambos os extremos.\n');

fprintf('Exemplo: linspace(0, 10, 5) gera [0, 2.5, 5, 7.5, 10]\n\n');fprintf('Exemplo: linspace(0, 10, 5) gera [0, 2.5, 5, 7.5, 10]\n\n');



fprintf('6.2.i - Gerando y[n] = n*sin(n/2) para 0 <= n <= 10:\n');fprintf('6.2.i - Gerando y[n] = n*sin(n/2) para 0 <= n <= 10:\n');

n_range = 0:10;n_range = 0:10;

y_sin = n_range .* sin(n_range / 2);y_sin = n_range .* sin(n_range / 2);



figure('Name', 'Questão 6.2.i - y[n] = n*sin(n/2)');figure('Name', 'Questão 6.2.i - y[n] = n*sin(n/2)');

subplot(2, 1, 1);subplot(2, 1, 1);

stem(n_range, y_sin, 'b', 'LineWidth', 1.5);stem(n_range, y_sin, 'b', 'LineWidth', 1.5);

title('y[n] = n \cdot sin(n/2)');title('y[n] = n \cdot sin(n/2)');

xlabel('n');xlabel('n');

ylabel('y[n]');ylabel('y[n]');

grid on;grid on;



subplot(2, 1, 2);subplot(2, 1, 2);

plot(n_range, y_sin, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 6);plot(n_range, y_sin, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 6);

title('y[n] = n \cdot sin(n/2) (visualização contínua)');title('y[n] = n \cdot sin(n/2) (visualização contínua)');

xlabel('n');xlabel('n');

ylabel('y[n]');ylabel('y[n]');

grid on;grid on;



fprintf('Sinal y[n] gerado e plotado\n\n');fprintf('Sinal y[n] gerado e plotado\n\n');



fprintf('6.2.ii - Gerando z[n] = 0.5^n e j^n/2 para 0 <= n <= 10:\n');fprintf('6.2.ii - Gerando z[n] = 0.5^n e j^n/2 para 0 <= n <= 10:\n');

z_exp = 0.5 .^ n_range;z_exp = 0.5 .^ n_range;

z_complex = exp(1j * n_range / 2);z_complex = exp(1j * n_range / 2);



figure('Name', 'Questão 6.2.ii - z[n] = 0.5^n');figure('Name', 'Questão 6.2.ii - z[n] = 0.5^n');

stem(n_range, z_exp, 'b', 'LineWidth', 1.5);stem(n_range, z_exp, 'b', 'LineWidth', 1.5);

title('z[n] = 0.5^n');title('z[n] = 0.5^n');

xlabel('n');xlabel('n');

ylabel('z[n]');ylabel('z[n]');

grid on;grid on;



figure('Name', 'Questão 6.2.ii - j^(n/2)');figure('Name', 'Questão 6.2.ii - j^(n/2)');

subplot(2, 1, 1);subplot(2, 1, 1);

stem(n_range, real(z_complex), 'b', 'LineWidth', 1.5);stem(n_range, real(z_complex), 'b', 'LineWidth', 1.5);

title('Parte Real de j^{n/2}');title('Parte Real de j^{n/2}');

xlabel('n');xlabel('n');

ylabel('Real');ylabel('Real');

grid on;grid on;



subplot(2, 1, 2);subplot(2, 1, 2);

stem(n_range, imag(z_complex), 'r', 'LineWidth', 1.5);stem(n_range, imag(z_complex), 'r', 'LineWidth', 1.5);

title('Parte Imaginária de j^{n/2}');title('Parte Imaginária de j^{n/2}');

xlabel('n');xlabel('n');

ylabel('Imaginário');ylabel('Imaginário');

grid on;grid on;



fprintf('Sinais z[n] gerados e plotados\n\n');fprintf('Sinais z[n] gerados e plotados\n\n');



fprintf('===== TRABALHO CONCLUÍDO =====\n');fprintf('===== TRABALHO CONCLUÍDO =====\n');

fprintf('Todas as questões foram executadas.\n');fprintf('Todas as questões foram executadas.\n');

fprintf('Verifique os gráficos gerados.\n');fprintf('Verifique os gráficos gerados.\n');

