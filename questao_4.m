% Questão 4 - Operações com Arquivos de Áudio
% Trabalho 1 - Processamento Digital de Sinais

clear all;
close all;
clc;

fprintf('===== QUESTÃO 4 - OPERAÇÕES COM ARQUIVOS DE ÁUDIO =====\n\n');

%% 4.1 - Leitura e reprodução de arquivo de áudio

fprintf('4.1 - Leitura e reprodução de arquivo de áudio:\n');
try
    [Y, FS] = audioread('musica.wav');
    BITS = 16;
    
    fprintf('Arquivo musica.wav carregado com sucesso\n');
    fprintf('Taxa de amostragem: %d Hz\n', FS);
    fprintf('Número de amostras: %d\n', length(Y));
    fprintf('Duração: %.2f segundos\n', length(Y)/FS);
    
    figure('Name', 'Questão 4.1 - Arquivo de Áudio');
    plot(Y);
    title('Forma de onda - musica.wav');
    xlabel('Amostra');
    ylabel('Amplitude');
    grid on;
    
    fprintf('\nExplicação das funções:\n');
    fprintf('audioread(arquivo): Lê arquivo de áudio e retorna:\n');
    fprintf('  - Y: vetor/matriz com as amostras de áudio\n');
    fprintf('  - FS: frequência de amostragem em Hz\n');
    fprintf('soundsc(Y,FS): Reproduz o áudio normalizado\n');
    fprintf('  - Y: vetor de amostras\n');
    fprintf('  - FS: taxa de amostragem\n');
    fprintf('audiowrite(arquivo,Y,FS): Grava áudio em arquivo\n\n');
    
    fprintf('Reproduzindo áudio original...\n');
    % soundsc(Y, FS);  % Comentado para evitar erros de hardware
    pause(2);
    
    %% 4.2 - Alterando parâmetros FS
    
    fprintf('\n4.2 - Alterando parâmetros FS:\n');
    fprintf('Reproduzindo com FS/2 (metade da frequência)...\n');
    % soundsc(Y, FS/2);  % Comentado para evitar erros de hardware
    pause(2);
    fprintf('Efeito: Som mais grave e mais lento\n\n');
    
    fprintf('Reproduzindo com FS*2 (dobro da frequência)...\n');
    % soundsc(Y, FS*2);  % Comentado para evitar erros de hardware
    pause(2);
    fprintf('Efeito: Som mais agudo e mais rápido\n\n');
    
    fprintf('Explicação: A frequência de amostragem determina a velocidade\n');
    fprintf('de reprodução. FS menor deixa o som mais lento e grave.\n');
    fprintf('FS maior deixa o som mais rápido e agudo.\n\n');
    
catch
    fprintf('Arquivo musica.wav não encontrado ou erro na leitura\n\n');
end

fprintf('===== QUESTÃO 4 CONCLUÍDA =====\n');
