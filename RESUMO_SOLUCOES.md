# RESUMO DAS SOLUÇÕES - TRABALHO 1 PDS

## 2. OPERAÇÕES COM VETORES

### 2.1 - Vetor x
```matlab
x = 0:1:25;
```
Cria vetor com 26 elementos: [0, 1, 2, ..., 25]

### 2.2 - Vetor y
```matlab
y = 24:-1:0;
```
Cria vetor com 25 elementos: [24, 23, 22, ..., 0]

### 2.3 - Análise do código
```matlab
z = zeros(1, 100);    % Cria vetor de 100 zeros
n = 0:99;             % Índices de 0 a 99
z(1:26) = x;          % Preenche posições 1-26 com x
z(27:51) = y;         % Preenche posições 27-51 com y
plot(n, z);           % Plota z vs n
axis([-2 100 -1 30]); % Define limites dos eixos
grid;                 % Adiciona grade
```

**Resultado:** Gráfico mostra rampa ascendente (0-25), depois descendente (24-0), seguido de zeros.

### 2.4 - Sinal Periódico
```matlab
zp = [z z z];
```
- Período fundamental: 100 amostras
- Frequência de amostragem: 8000 Hz
- Frequência fundamental: 8000/100 = 80 Hz

---

## 3. OPERAÇÕES COM MATRIZES

### 3.1 e 3.2 - Multiplicação de Matrizes
```matlab
A = [2 3 4; 4 4 4; 8 9 0];  % 3x3
C = [1 2; 3 4; 1 1];        % 3x2
resultado = A * C;           % 3x2
```

**Propriedade Comutativa:** NÃO vale para matrizes
- A*C é possível (3x3 × 3x2 = 3x2)
- C*A não é possível (dimensões incompatíveis)
- Mesmo quando ambas operações são possíveis, geralmente A*C ≠ C*A

### 3.3 - Multiplicação Elemento a Elemento
```matlab
D = ones(3, 3);
A .* D = A;
```
**Explicação:** 
- Operador `.*` multiplica elemento por elemento
- Requer matrizes de mesmas dimensões
- Como D contém apenas 1s, A.*D retorna A

### 3.4 - Comparação FOR vs Vetorial
**Resultado:** Operações vetoriais são dezenas/centenas de vezes mais rápidas
- FOR: Lento (laços explícitos em interpretador)
- Vetorial (M*5): Rápido (otimizado internamente)

**Conclusão:** Sempre prefira operações vetoriais/matriciais em MATLAB/Octave

### 3.5 e 3.6 - Centralização de Dados
```matlab
M = mean(X, 2);           % Média de cada linha
X1 = X - M*ones(1,3);     % Subtrai média
```
**Resultado:** X1 tem cada linha com média zero (centralizada)

---

## 4. OPERAÇÕES COM ARQUIVOS DE ÁUDIO

### 4.1 - Funções de Áudio
**audioread(arquivo):**
- Lê arquivo de áudio (WAV, MP3, etc.)
- Retorna: Y (amostras) e FS (taxa de amostragem)

**soundsc(Y, FS):**
- Reproduz áudio normalizado
- Y: vetor de amostras
- FS: frequência de amostragem

**audiowrite(arquivo, Y, FS):**
- Salva áudio em arquivo
- Permite especificar formato e qualidade

### 4.2 - Alteração de FS
**FS/2 (metade):**
- Som mais lento
- Tom mais grave
- Frequências reduzidas

**FS*2 (dobro):**
- Som mais rápido
- Tom mais agudo
- Frequências aumentadas

**Explicação:** A taxa de amostragem determina quantas amostras são reproduzidas por segundo. Alterar FS muda a velocidade e altura tonal.

---

## 5. OPERAÇÕES COM ARQUIVOS DE IMAGEM

### 5.1 e 5.2 - Leitura e Visualização
```matlab
[m, n] = imread('teste.bmp');
Y = ind2gray(m, n);
imshow(Y);
```
Converte imagem indexada para escala de cinza e exibe.

### 5.3 - Função Binariza
```matlab
function x = binariza(a, b)
    x = zeros(size(a));
    for i = 1:size(a, 1)
        for j = 1:size(a, 2)
            if a(i, j) >= b
                x(i, j) = 1;
            else
                x(i, j) = 0;
            end
        end
    end
end
```
Separa pixels em preto (0) ou branco (1) baseado no limiar.

### 5.4 - Binarização por Operador
```matlab
Y1 = Y > 0.5;
```
**Resultado:** Equivalente à função binariza, mas muito mais eficiente.
- Operador `>` cria matriz lógica
- Pixels acima de 0.5 → 1 (branco)
- Pixels abaixo → 0 (preto)
- Operação vetorizada é mais rápida

### 5.5 - Visualizações
**mesh(Y):**
- Superfície 3D
- Mostra intensidade como altura
- Permite ver variações topográficas

**contour(Y):**
- Mapa de contorno
- Curvas de nível de intensidade
- Útil para identificar regiões de mesma intensidade

---

## 6. ATIVIDADES

### 6.1 - linspace
```matlab
x = linspace(x1, x2, N);
```
Gera N pontos igualmente espaçados entre x1 e x2 (incluindo extremos).

**Exemplo:** `linspace(0, 10, 5)` → [0, 2.5, 5, 7.5, 10]

### 6.2.i - y[n] = n·sin(n/2)

**Método FOR:**
```matlab
for i = 1:length(n)
    y(i) = n(i) * sin(n(i) / 2);
end
```

**Método Vetorial:**
```matlab
y = n .* sin(n / 2);
```

**Comparação:** Método vetorial é mais conciso e eficiente.

### 6.2.ii - z[n] = 0.5^n e j^(n/2)

**Método FOR:**
```matlab
for i = 1:length(n)
    z1(i) = 0.5^n(i);
    z2(i) = exp(1j * n(i) / 2);
end
```

**Método Vetorial:**
```matlab
z1 = 0.5 .^ n;
z2 = exp(1j * n / 2);
```

**Observação:** j^(n/2) = e^(j·n/2) gera sinal complexo com parte real e imaginária.

---

## CONCLUSÕES GERAIS

1. **Operações Vetoriais:** Sempre preferir sobre laços FOR
2. **Eficiência:** MATLAB/Octave são otimizados para álgebra linear
3. **Visualização:** Múltiplas funções para diferentes necessidades
4. **Áudio/Imagem:** Ferramentas poderosas para processamento multimídia
5. **Programação:** Código limpo e conciso usando recursos nativos

---

## ARQUIVOS GERADOS

1. `trabalho1_completo.m` - Script principal com todas as questões
2. `binariza.m` - Função de binarização
3. `questao_6_2_i_for.m` - Questão 6.2.i com FOR
4. `questao_6_2_i_vetorial.m` - Questão 6.2.i vetorial
5. `questao_6_2_ii_for.m` - Questão 6.2.ii com FOR
6. `questao_6_2_ii_vetorial.m` - Questão 6.2.ii vetorial
7. `teste_ambiente.m` - Script de teste
8. `executar.sh` - Script bash para execução
9. `README.md` - Documentação do projeto
10. `INSTALACAO.md` - Instruções de instalação
11. `RESUMO_SOLUCOES.md` - Este arquivo
