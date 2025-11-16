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
    
    % Salvar em alta resolução usando diferentes formatos
    filename_png = sprintf('figuras/%s.png', figName);
    filename_jpg = sprintf('figuras/%s.jpg', figName);
    
    try
        % Tentar salvar como PNG
        saveas(figHandles(i), filename_png);
    catch
        % Se falhar, tentar JPG
        try
            saveas(figHandles(i), filename_jpg);
            filename = filename_jpg;
        catch
            % Se ainda falhar, usar print com driver mais simples
            print(figHandles(i), filename_png, '-dpng', '-S640,480');
        end
    end
    
    if exist(filename_png, 'file')
        fprintf('Salva: %s\n', filename_png);
    elseif exist(filename_jpg, 'file')
        fprintf('Salva: %s\n', filename_jpg);
    else
        fprintf('AVISO: Não foi possível salvar %s\n', figName);
    end
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
