% Script alternativo para gerar e salvar figuras em formato compatível
% Usa método mais simples e compatível com ambiente sem display

clear all;
close all;
clc;

fprintf('Gerando figuras do trabalho...\n\n');

% Criar diretório para figuras
if ~exist('figuras', 'dir')
    mkdir('figuras');
end

% Configurar para não usar display gráfico
graphics_toolkit('gnuplot');

% Executar o trabalho completo
fprintf('Executando trabalho1_completo.m...\n');
trabalho1_completo;

fprintf('\n\nSalvando figuras em formato FIG...\n');

% Obter todas as figuras
figHandles = findall(0, 'Type', 'figure');
numFigs = length(figHandles);

fprintf('Total de figuras: %d\n\n', numFigs);

% Salvar cada figura em formato .fig (formato nativo do MATLAB/Octave)
for i = 1:numFigs
    figure(figHandles(i));
    
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
    
    % Salvar em formato .fig
    filename_fig = sprintf('figuras/%s.fig', figName);
    
    try
        hgsave(figHandles(i), filename_fig);
        fprintf('✓ Salvo: %s\n', filename_fig);
    catch err
        fprintf('✗ Erro ao salvar %s: %s\n', figName, err.message);
    end
end

% Criar índice
fid = fopen('figuras/INDICE.txt', 'w');
fprintf(fid, 'FIGURAS GERADAS - TRABALHO 1 PDS\n');
fprintf(fid, '================================\n\n');
fprintf(fid, 'Total: %d figuras\n\n', numFigs);
fprintf(fid, 'Formato: .fig (formato nativo MATLAB/Octave)\n\n');
fprintf(fid, 'Para visualizar:\n');
fprintf(fid, '  octave> openfig(''figuras/nome_arquivo.fig'')\n\n');
fprintf(fid, 'Para converter para PNG:\n');
fprintf(fid, '  octave> fig = openfig(''arquivo.fig'');\n');
fprintf(fid, '  octave> print(fig, ''arquivo.png'', ''-dpng'');\n\n');
fprintf(fid, 'Arquivos salvos:\n');
fprintf(fid, '================\n\n');

for i = 1:numFigs
    figName = get(figHandles(i), 'Name');
    if isempty(figName)
        figName = sprintf('Figura %02d', i);
    end
    fprintf(fid, '%d. %s\n', i, figName);
end

fclose(fid);

fprintf('\n=== CONCLUÍDO ===\n');
fprintf('Figuras salvas em: figuras/\n');
fprintf('Índice criado em: figuras/INDICE.txt\n');
fprintf('\nPara visualizar as figuras:\n');
fprintf('  octave> openfig(''figuras/nome_arquivo.fig'')\n');
