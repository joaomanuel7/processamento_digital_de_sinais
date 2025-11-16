function x = binariza(a, b)
% BINARIZA - Função para binarizar uma imagem
%
% Sintaxe: x = binariza(a, b)
%
% Parâmetros:
%   a - matriz com a imagem a ser binarizada (valores entre 0 e 1)
%   b - limiar de binarização (intensidade do pixel)
%
% Retorno:
%   x - matriz binarizada (valores 0 ou 1)
%
% Descrição:
%   Esta função recebe uma imagem em escala de cinza e um valor de limiar.
%   Pixels com intensidade menor que o limiar são definidos como 0 (preto).
%   Pixels com intensidade maior ou igual ao limiar são definidos como 1 (branco).

    % Inicializa matriz de saída com zeros
    x = zeros(size(a));
    
    % Percorre cada elemento da matriz
    for i = 1:size(a, 1)
        for j = 1:size(a, 2)
            if a(i, j) >= b
                x(i, j) = 1;  % Pixel branco
            else
                x(i, j) = 0;  % Pixel preto
            end
        end
    end
end
