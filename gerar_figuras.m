% Script para executar o trabalho e salvar automaticamente todas as figuras
% Este script facilita a criação do relatório

clear all;
close all;
clc;

fprintf('Executando trabalho e salvando figuras...\n\n');

% Criar diretório para figuras
if ~exist('figuras', 'dir')
    mkdir('figuras');
end

% Executar o trabalho completo
trabalho1_completo;

fprintf('\n\nSalvando todas as figuras...\n');

% Obter todas as figuras abertas
figHandles = findall(0, 'Type', 'figure');
numFigs = length(figHandles);

fprintf('Total de figuras encontradas: %d\n\n', numFigs);

% Salvar cada figura
for i = 1:numFigs
    figure(figHandles(i));
    
    % Obter o nome da janela
    figName = get(figHandles(i), 'Name');
    
    % Se não tem nome, usar número
    if isempty(figName)
        figName = sprintf('Figura_%02d', i);
    else
        % Remover caracteres problemáticos do nome
        figName = strrep(figName, ' ', '_');
        figName = strrep(figName, '/', '_');
        figName = strrep(figName, '\', '_');
        figName = strrep(figName, ':', '_');
    end
    
    % Salvar em alta resolução
    filename = sprintf('figuras/%s.png', figName);
    print(figHandles(i), filename, '-dpng', '-r300');
    
    fprintf('Salva: %s\n', filename);
end

fprintf('\n\nTodas as figuras foram salvas no diretório "figuras/"\n');
fprintf('Use essas imagens no seu relatório.\n');

% Criar arquivo de índice das figuras
fid = fopen('figuras/indice_figuras.txt', 'w');
fprintf(fid, 'ÍNDICE DE FIGURAS GERADAS\n');
fprintf(fid, '==========================\n\n');
fprintf(fid, 'Total: %d figuras\n\n', numFigs);

for i = 1:numFigs
    figName = get(figHandles(i), 'Name');
    if isempty(figName)
        figName = sprintf('Figura %02d', i);
    end
    fprintf(fid, '%d. %s\n', i, figName);
end

fprintf(fid, '\n\nTodas as figuras foram salvas em formato PNG com resolução 300 DPI.\n');
fclose(fid);

fprintf('\nArquivo de índice criado: figuras/indice_figuras.txt\n');
fprintf('\n=== PROCESSO CONCLUÍDO ===\n');
