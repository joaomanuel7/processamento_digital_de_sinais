% Script para converter figuras .fig para JPEG
% Converte todas as figuras do diretório figuras/ para formato JPEG

clear all;
close all;
clc;

fprintf('=== CONVERSÃO DE FIGURAS PARA JPEG ===\n\n');

% Configurar toolkit para gnuplot (funciona sem display)
available_toolkits = graphics_toolkit();
fprintf('Toolkit gráfico atual: %s\n', available_toolkits);
try
    graphics_toolkit('gnuplot');
    fprintf('Mudando para: gnuplot\n');
catch
    fprintf('Mantendo toolkit padrão\n');
end
fprintf('\n');

% Verificar se diretório de figuras existe
if ~exist('figuras', 'dir')
    fprintf('ERRO: Diretório figuras/ não encontrado!\n');
    fprintf('Execute primeiro: salvar_figuras_fig\n');
    return;
end

% Criar subdiretório para JPEGs
if ~exist('figuras/jpeg', 'dir')
    mkdir('figuras/jpeg');
end

% Listar todos os arquivos .fig
arquivos = dir('figuras/*.fig');
numArquivos = length(arquivos);

fprintf('Encontrados %d arquivos .fig para converter\n\n', numArquivos);

if numArquivos == 0
    fprintf('Nenhum arquivo .fig encontrado!\n');
    return;
end

% Converter cada arquivo
sucessos = 0;
falhas = 0;

for i = 1:numArquivos
    filename = fullfile('figuras', arquivos(i).name);
    [~, name, ~] = fileparts(filename);
    
    fprintf('Convertendo %d/%d: %s...', i, numArquivos, name);
    
    try
        % Abrir figura sem exibir
        fig = openfig(filename, 'invisible');
        
        % Configurar toolkit para esta figura
        set(fig, 'visible', 'off');
        
        % Nome do arquivo de saída
        output_file = fullfile('figuras/jpeg', [name '.jpg']);
        
        % Salvar como JPEG com alta qualidade usando método alternativo
        % Tenta diferentes drivers
        try
            print(fig, output_file, '-djpeg', '-r300');
        catch
            try
                % Alternativa: salvar via saveas
                saveas(fig, output_file, 'jpg');
            catch
                error('Não foi possível salvar a figura');
            end
        end
        
        % Fechar figura
        close(fig);
        
        % Verificar se arquivo foi criado
        if exist(output_file, 'file')
            file_info = dir(output_file);
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

fprintf('\n=== RESULTADO ===\n');
fprintf('Convertidas com sucesso: %d\n', sucessos);
fprintf('Falhas: %d\n', falhas);
fprintf('\nArquivos salvos em: figuras/jpeg/\n');

% Criar índice dos JPEGs
fid = fopen('figuras/jpeg/INDICE.txt', 'w');
fprintf(fid, 'FIGURAS JPEG - TRABALHO 1 PDS\n');
fprintf(fid, '==============================\n\n');
fprintf(fid, 'Total: %d figuras\n', sucessos);
fprintf(fid, 'Formato: JPEG\n');
fprintf(fid, 'Resolução: 300 DPI\n\n');
fprintf(fid, 'Arquivos:\n');
fprintf(fid, '=========\n\n');

jpeg_files = dir('figuras/jpeg/*.jpg');
for i = 1:length(jpeg_files)
    fprintf(fid, '%d. %s\n', i, jpeg_files(i).name);
end

fclose(fid);

fprintf('\nÍndice criado: figuras/jpeg/INDICE.txt\n');
fprintf('\n=== CONCLUÍDO ===\n');
