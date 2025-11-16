% Teste rápido para verificar se o ambiente está funcionando
% Este script executa operações básicas para validar a instalação

clear all;
close all;
clc;

fprintf('=== TESTE DE AMBIENTE MATLAB/OCTAVE ===\n\n');

% Teste 1: Operações básicas
fprintf('Teste 1: Operações Básicas\n');
x = 1:10;
y = x.^2;
fprintf('Vetor x: OK\n');
fprintf('Operação vetorial: OK\n\n');

% Teste 2: Gráficos
fprintf('Teste 2: Geração de Gráficos\n');
try
    figure;
    plot(x, y);
    title('Teste de Gráfico');
    xlabel('x');
    ylabel('y = x^2');
    grid on;
    fprintf('Gráfico gerado: OK\n\n');
catch
    fprintf('Erro ao gerar gráfico\n\n');
end

% Teste 3: Matrizes
fprintf('Teste 3: Operações com Matrizes\n');
A = [1 2; 3 4];
B = A * 2;
fprintf('Multiplicação de matriz: OK\n\n');

% Teste 4: Verificar arquivos
fprintf('Teste 4: Verificando Arquivos do Projeto\n');
arquivos = {'BOLA.WAV', 'musica.wav', 'teste.bmp', 'teste1.bmp', 'binariza.m'};
for i = 1:length(arquivos)
    if exist(arquivos{i}, 'file')
        fprintf('%s: ENCONTRADO\n', arquivos{i});
    else
        fprintf('%s: NÃO ENCONTRADO\n', arquivos{i});
    end
end

fprintf('\n=== TESTE CONCLUÍDO ===\n');
fprintf('Se todos os testes passaram, o ambiente está pronto!\n');
fprintf('Execute: trabalho1_completo\n');
