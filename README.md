# Trabalho 1 - Processamento Digital de Sinais

## Descrição
Este projeto contém a implementação completa do Trabalho 1 da disciplina de Processamento Digital de Sinais, utilizando MATLAB/Octave.

## Estrutura dos Arquivos

### Script Principal
- **trabalho1_completo.m**: Script principal que executa todas as questões do trabalho de forma sequencial

### Funções
- **binariza.m**: Função para binarizar imagens usando um limiar

### Scripts Individuais - Questão 6.2
- **questao_6_2_i_for.m**: Gera y[n] = n*sin(n/2) usando laço FOR
- **questao_6_2_i_vetorial.m**: Gera y[n] = n*sin(n/2) usando operação vetorial
- **questao_6_2_ii_for.m**: Gera z[n] = 0.5^n e j^(n/2) usando laço FOR
- **questao_6_2_ii_vetorial.m**: Gera z[n] = 0.5^n e j^(n/2) usando operação vetorial

### Arquivos de Dados
- **BOLA.WAV**: Arquivo de áudio para testes
- **musica.wav**: Arquivo de áudio utilizado na questão 4
- **teste.bmp**: Imagem 256x256 pixels usada nas questões 5.1-5.4
- **teste1.bmp**: Imagem utilizada na questão 5.5

## Como Executar

### Executar todo o trabalho
No MATLAB/Octave, execute:
```matlab
trabalho1_completo
```

### Executar questões específicas
Para executar apenas a questão 6.2.i com FOR:
```matlab
questao_6_2_i_for
```

Para executar apenas a questão 6.2.i com operação vetorial:
```matlab
questao_6_2_i_vetorial
```

Para executar apenas a questão 6.2.ii com FOR:
```matlab
questao_6_2_ii_for
```

Para executar apenas a questão 6.2.ii com operação vetorial:
```matlab
questao_6_2_ii_vetorial
```

## Conteúdo do Trabalho

### 2. Operações com Vetores
- Criação e manipulação de vetores
- Geração de sinais periódicos
- Cálculo de período e frequência fundamental

### 3. Operações com Matrizes
- Multiplicação de matrizes
- Operações elemento a elemento
- Análise de eficiência: FOR vs operações vetoriais
- Centralização de dados

### 4. Operações com Arquivos de Áudio
- Leitura de arquivos WAV
- Reprodução de áudio
- Alteração de taxa de amostragem
- Análise de efeitos

### 5. Operações com Arquivos de Imagem
- Leitura de imagens BMP
- Conversão para escala de cinza
- Binarização de imagens
- Visualização com mesh e contour

### 6. Atividades
- Uso da função linspace
- Geração de sinais usando FOR e operações vetoriais
- Comparação de métodos de programação

## Requisitos
- MATLAB R2016a ou superior, OU
- GNU Octave 4.0 ou superior

## Observações
- Certifique-se de que todos os arquivos estejam no mesmo diretório
- Para reprodução de áudio, é necessário ter alto-falantes ou fones conectados
- As imagens geradas aparecem em janelas separadas
- O script principal pode levar alguns segundos para executar completamente

## Resultados Esperados
O script gera:
- Múltiplas figuras com gráficos e visualizações
- Saída textual no console com análises e resultados
- Comparações de desempenho entre métodos

## Autor
Trabalho desenvolvido para a disciplina de Processamento Digital de Sinais
