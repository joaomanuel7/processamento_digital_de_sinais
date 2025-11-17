% Questão 3 - Operações com Matrizes
% Trabalho 1 - Processamento Digital de Sinais

clear all;
close all;
clc;

fprintf('===== QUESTÃO 3 - OPERAÇÕES COM MATRIZES =====\n\n');

%% 3.1 - Definindo matrizes A e C

fprintf('3.1 - Definindo matrizes A e C:\n');
A = [2 3 4; 4 4 4; 8 9 0];
C = [1 2; 3 4; 1 1];
fprintf('Matriz A (3x3):\n');
disp(A);
fprintf('Matriz C (3x2):\n');
disp(C);

%% 3.2 - Multiplicação A*C

fprintf('3.2 - Multiplicação A*C:\n');
resultado_AC = A * C;
disp(resultado_AC);
fprintf('Testando propriedade comutativa (C*A):\n');
try
    resultado_CA = C * A;
    disp(resultado_CA);
    fprintf('A propriedade comutativa NÃO vale para multiplicação de matrizes.\n');
    fprintf('Mesmo quando ambas as operações são possíveis, A*C ≠ C*A em geral.\n\n');
catch
    fprintf('ERRO: Não é possível calcular C*A (dimensões incompatíveis).\n');
    fprintf('A propriedade comutativa NÃO vale para multiplicação de matrizes.\n\n');
end

%% 3.3 - Multiplicação elemento a elemento

fprintf('3.3 - Multiplicação elemento a elemento:\n');
try
    resultado_A_ponto_C = A .* C;
    fprintf('A.*C resulta em erro (dimensões incompatíveis: 3x3 e 3x2)\n\n');
catch
    fprintf('ERRO: A.*C não é possível (dimensões incompatíveis)\n\n');
end

D = ones(3, 3);
resultado_A_ponto_D = A .* D;
fprintf('Matriz D (3x3 de uns):\n');
disp(D);
fprintf('A.*D:\n');
disp(resultado_A_ponto_D);
fprintf('Explicação: O operador .* realiza multiplicação elemento a elemento.\n');
fprintf('Como D contém apenas 1s, A.*D retorna a própria matriz A.\n');
fprintf('Para a operação ser válida, as matrizes devem ter as mesmas dimensões.\n\n');

%% 3.4 - Comparação de eficiência: FOR vs operação vetorial

fprintf('3.4 - Comparação de eficiência: FOR vs operação vetorial\n');
M = ones(1500, 1500);

fprintf('Multiplicando por 5 usando FOR...\n');
tic;
M_for = M;
for i = 1:size(M, 1)
    for j = 1:size(M, 2)
        M_for(i, j) = M_for(i, j) * 5;
    end
end
tempo_for = toc;
fprintf('Tempo com FOR: %.4f segundos\n', tempo_for);

fprintf('Multiplicando por 5 usando operação vetorial...\n');
tic;
M_vet = M * 5;
tempo_vet = toc;
fprintf('Tempo com operação vetorial: %.4f segundos\n', tempo_vet);

fprintf('Ganho de velocidade: %.2fx mais rápido\n', tempo_for / tempo_vet);
fprintf('Conclusão: Operações vetoriais são MUITO mais eficientes que laços FOR.\n');
fprintf('MATLAB/Octave são otimizados para operações matriciais.\n\n');

%% 3.5 - Operações com média

fprintf('3.5 - Operações com média:\n');
X = [4 8 12; 2 6 10];
fprintf('Matriz X (2x3):\n');
disp(X);

M_media = mean(X, 2);
fprintf('Média de cada linha (M = mean(X,2)):\n');
disp(M_media);

X1 = X - M_media * ones(1, 3);
fprintf('X1 = X - M*ones(1,3):\n');
disp(X1);

%% 3.6 - Diferenças entre X e X1

fprintf('3.6 - Diferenças entre X e X1:\n');
fprintf('X: Matriz original com valores arbitrários\n');
fprintf('X1: Matriz centralizada (média de cada linha é 0)\n');
fprintf('M*ones(1,3) replica o vetor de médias em 3 colunas\n');
fprintf('Ao subtrair de X, cada linha de X1 tem média zero.\n');
fprintf('Verificando médias de X1:\n');
disp(mean(X1, 2));
fprintf('(valores próximos a zero devido a erros de arredondamento)\n\n');

fprintf('===== QUESTÃO 3 CONCLUÍDA =====\n');
