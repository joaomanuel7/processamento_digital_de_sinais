% Script para gerar figuras diretamente em formato JPEG
% Executa o trabalho e salva todas as figuras como JPEG

clear all;
close all;
clc;

fprintf('Gerando figuras em formato JPEG...\n\n');

% Criar diretório para figuras JPEG
if ~exist('figuras/jpeg', 'dir')
    mkdir('figuras/jpeg');
end

% Configurar para não usar display gráfico
graphics_toolkit('gnuplot');

% Executar o trabalho completo
fprintf('Executando trabalho1_completo.m...\n');
trabalho1_completo;

fprintf('\n\nSalvando figuras em formato JPEG...\n');

% Obter todas as figuras
figHandles = findall(0, 'Type', 'figure');
numFigs = length(figHandles);

fprintf('Total de figuras: %d\n\n', numFigs);

sucessos = 0;
falhas = 0;

% Salvar cada figura
for i = 1:numFigs
    % Obter o nome da janela
    figName = get(figHandles(i), 'Name');
    
    if isempty(figName)
        figName = sprintf('Figura_%02d', i);
    else
        % Limpar nome do arquivo
        figName = strrep(figName, ' ', '_');
        figName = strrep(figName, '/', '_');
        figName = strrep(figName, ':', '_');
        figName = strrep(figName, '[', '');
        figName = strrep(figName, ']', '');
    end
    
    fprintf('Salvando %d/%d: %s...', i, numFigs, figName);
    
    % Nome do arquivo de saída
    filename_jpg = sprintf('figuras/jpeg/%s.jpg', figName);
    
    try
        % Método 1: Usar saveas (mais compatível)
        figure(figHandles(i));
        saveas(figHandles(i), filename_jpg);
        
        % Verificar se foi criado
        if exist(filename_jpg, 'file')
            file_info = dir(filename_jpg);
            fprintf(' ✓ OK (%d KB)\n', round(file_info.bytes/1024));
            sucessos = sucessos + 1;
        else
            fprintf(' ✗ FALHA\n');
            falhas = falhas + 1;
        end
        
    catch err
        fprintf(' ✗ ERRO: %s\n', err.message);
        falhas = falhas + 1;
    end
end

% Criar índice
fid = fopen('figuras/jpeg/INDICE.txt', 'w');
fprintf(fid, 'FIGURAS JPEG - TRABALHO 1 PDS\n');
fprintf(fid, '==============================\n\n');
fprintf(fid, 'Total: %d figuras\n', sucessos);
fprintf(fid, 'Formato: JPEG\n\n');
fprintf(fid, 'Arquivos:\n');
fprintf(fid, '=========\n\n');

jpeg_files = dir('figuras/jpeg/*.jpg');
for i = 1:length(jpeg_files)
    fprintf(fid, '%d. %s\n', i, jpeg_files(i).name);
end

fclose(fid);

fprintf('\n=== RESULTADO ===\n');
fprintf('Convertidas com sucesso: %d\n', sucessos);
fprintf('Falhas: %d\n', falhas);
fprintf('\nArquivos salvos em: figuras/jpeg/\n');
fprintf('Índice criado: figuras/jpeg/INDICE.txt\n');
fprintf('\n=== CONCLUÍDO ===\n');
