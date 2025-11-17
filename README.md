# Trabalho 1 - Processamento Digital de Sinais (PDS)# Trabalho 1 - Processamento Digital de Sinais



Implementação completa do Trabalho 1 da disciplina de Processamento Digital de Sinais, desenvolvida em MATLAB/Octave.## Descrição

Este projeto contém a implementação completa do Trabalho 1 da disciplina de Processamento Digital de Sinais, utilizando MATLAB/Octave.

## 📋 Descrição

## Estrutura dos Arquivos

Este projeto implementa todas as questões do trabalho prático, abordando:

- Operações com vetores e matrizes### Script Principal

- Processamento de sinais de áudio- **trabalho1_completo.m**: Script principal que executa todas as questões do trabalho de forma sequencial

- Processamento de imagens digitais

- Geração e análise de sinais discretos### Funções

- Comparação de eficiência: loops vs operações vetoriais- **binariza.m**: Função para binarizar imagens usando um limiar



## 🚀 Como Executar### Scripts Individuais - Questão 6.2

- **questao_6_2_i_for.m**: Gera y[n] = n*sin(n/2) usando laço FOR

### Requisitos- **questao_6_2_i_vetorial.m**: Gera y[n] = n*sin(n/2) usando operação vetorial

- **GNU Octave 8.4.0** ou superior- **questao_6_2_ii_for.m**: Gera z[n] = 0.5^n e j^(n/2) usando laço FOR

- Sistema Linux/Unix (testado em Ubuntu)- **questao_6_2_ii_vetorial.m**: Gera z[n] = 0.5^n e j^(n/2) usando operação vetorial

- Pacote `xvfb` (para geração de figuras)

### Arquivos de Dados

### Instalação- **BOLA.WAV**: Arquivo de áudio para testes

```bash- **musica.wav**: Arquivo de áudio utilizado na questão 4

# Instalar Octave- **teste.bmp**: Imagem 256x256 pixels usada nas questões 5.1-5.4

sudo apt update- **teste1.bmp**: Imagem utilizada na questão 5.5

sudo apt install octave xvfb

## Como Executar

# Clonar o repositório

git clone https://github.com/joaomanuel7/processamento_digital_de_sinais.git### Executar todo o trabalho

cd processamento_digital_de_sinaisNo MATLAB/Octave, execute:

git checkout final```matlab

```trabalho1_completo

```

### Execução

### Executar questões específicas

#### Executar todas as questões:Para executar apenas a questão 6.2.i com FOR:

```bash```matlab

octave-cli --eval "trabalho1_completo"questao_6_2_i_for

``````



#### Executar questão específica:Para executar apenas a questão 6.2.i com operação vetorial:

```bash```matlab

octave-cli --eval "questao_2"  # Questão 2 - Vetoresquestao_6_2_i_vetorial

octave-cli --eval "questao_3"  # Questão 3 - Matrizes```

octave-cli --eval "questao_4"  # Questão 4 - Áudio

octave-cli --eval "questao_5"  # Questão 5 - ImagensPara executar apenas a questão 6.2.ii com FOR:

octave-cli --eval "questao_6"  # Questão 6 - Atividades```matlab

```questao_6_2_ii_for

```

#### Gerar figuras em JPEG:

```bashPara executar apenas a questão 6.2.ii com operação vetorial:

chmod +x converter_para_jpeg.sh```matlab

./converter_para_jpeg.shquestao_6_2_ii_vetorial

``````



## 📁 Estrutura do Projeto## Conteúdo do Trabalho



```### 2. Operações com Vetores

.- Criação e manipulação de vetores

├── trabalho1_completo.m       # Script principal (todas as questões)- Geração de sinais periódicos

├── questao_2.m                # Questão 2 - Operações com Vetores- Cálculo de período e frequência fundamental

├── questao_3.m                # Questão 3 - Operações com Matrizes

├── questao_4.m                # Questão 4 - Arquivos de Áudio### 3. Operações com Matrizes

├── questao_5.m                # Questão 5 - Arquivos de Imagem- Multiplicação de matrizes

├── questao_6.m                # Questão 6 - Atividades- Operações elemento a elemento

├── binariza.m                 # Função auxiliar para binarização- Análise de eficiência: FOR vs operações vetoriais

├── regenerar_imagens.m        # Regenera imagens 5.2, 5.3, 5.4- Centralização de dados

├── salvar_figuras_fig.m       # Salva figuras em formato .fig

├── converter_para_jpeg.sh     # Converte .fig para JPEG (300 DPI)### 4. Operações com Arquivos de Áudio

├── executar.sh                # Script de execução rápida- Leitura de arquivos WAV

├── Trabalho1_PDS (1).pdf      # Enunciado do trabalho- Reprodução de áudio

├── musica.wav                 # Arquivo de áudio (questão 4)- Alteração de taxa de amostragem

├── teste.bmp                  # Imagem teste (questão 5)- Análise de efeitos

├── teste1.bmp                 # Imagem teste (questão 5.5)

├── BOLA.WAV                   # Arquivo de áudio adicional### 5. Operações com Arquivos de Imagem

├── figuras/                   # Figuras geradas- Leitura de imagens BMP

│   ├── *.fig                 # Formato nativo MATLAB/Octave- Conversão para escala de cinza

│   ├── INDICE.txt            # Índice das figuras .fig- Binarização de imagens

│   └── jpeg/                 # Figuras em JPEG (300 DPI)- Visualização com mesh e contour

│       ├── *.jpg             # 11 figuras em alta qualidade

│       └── INDICE.txt        # Índice das figuras JPEG### 6. Atividades

└── README.md                  # Este arquivo- Uso da função linspace

```- Geração de sinais usando FOR e operações vetoriais

- Comparação de métodos de programação

## 📊 Questões Implementadas

## Requisitos

### Questão 2 - Operações com Vetores- MATLAB R2016a ou superior, OU

- **2.1**: Criação de vetor `x = 0:1:25`- GNU Octave 4.0 ou superior

- **2.2**: Criação de vetor `y = 24:-1:0`

- **2.3**: Operações com vetores x, y, z e plotagem com `plot()`## Observações

- **2.4**: Geração de sinal periódico (3 períodos) e cálculo de frequência fundamental- Certifique-se de que todos os arquivos estejam no mesmo diretório

- Para reprodução de áudio, é necessário ter alto-falantes ou fones conectados

### Questão 3 - Operações com Matrizes- As imagens geradas aparecem em janelas separadas

- **3.1**: Definição de matrizes A (3x3) e C (3x2)- O script principal pode levar alguns segundos para executar completamente

- **3.2**: Multiplicação de matrizes e propriedade comutativa

- **3.3**: Multiplicação elemento a elemento (`.*`)## Resultados Esperados

- **3.4**: Comparação de eficiência (FOR vs operação vetorial) - **662-718x mais rápido**O script gera:

- **3.5**: Operações com média de linhas- Múltiplas figuras com gráficos e visualizações

- **3.6**: Centralização de matrizes (média zero)- Saída textual no console com análises e resultados

- Comparações de desempenho entre métodos

### Questão 4 - Operações com Arquivos de Áudio

- **4.1**: Leitura com `audioread()` e análise de propriedades## Autor

- **4.2**: Alteração de frequência de amostragem (FS/2 e FS*2)Trabalho desenvolvido para a disciplina de Processamento Digital de Sinais


### Questão 5 - Operações com Arquivos de Imagem
- **5.1 e 5.2**: Leitura com `imread()` e conversão para escala de cinza
- **5.3**: Binarização usando função `binariza()`
- **5.4**: Binarização usando operador lógico `>`
- **5.5**: Visualização 3D com `mesh()` e `contour()`

### Questão 6 - Atividades
- **6.1**: Explicação e uso do comando `linspace()`
- **6.2.i**: Geração de y[n] = n·sin(n/2) para 0 ≤ n ≤ 10
- **6.2.ii**: Geração de z[n] = 0.5^n e j^(n/2) (números complexos)

## 📈 Figuras Geradas

Total de **11 figuras** em dois formatos:

### Formato .fig (nativo):
- Questão_2.3_-_Vetor_z.fig
- Questão_2.4_-_Sinal_Periódico.fig
- Questão_4.1_-_Arquivo_de_Áudio.fig
- Questão_5.2_-_Imagem_Original.fig
- Questão_5.3_-_Imagem_Binarizada.fig
- Questão_5.4_-_Binarização_por_Operador.fig
- Questão_5.5_-_Contour.fig
- Questão_5.5_-_Mesh.fig
- Questão_6.2.i_-_yn_=_n*sin(n_2).fig
- Questão_6.2.ii_-_zn_=_0.5^n.fig
- Questão_6.2.ii_-_j^(n_2).fig

### Formato JPEG (300 DPI):
Todas as 11 figuras também disponíveis em `figuras/jpeg/` para uso em relatórios.

## 🔧 Funções e Scripts Auxiliares

### `binariza.m`
Função para binarização de imagens usando threshold:
```matlab
function Y_bin = binariza(Y, limiar)
    % Percorre a matriz e classifica cada pixel
    [linhas, colunas] = size(Y);
    Y_bin = zeros(linhas, colunas);
    for i = 1:linhas
        for j = 1:colunas
            if Y(i, j) > limiar
                Y_bin(i, j) = 1;
            else
                Y_bin(i, j) = 0;
            end
        end
    end
end
```

### `converter_para_jpeg.sh`
Script Bash que converte figuras .fig para JPEG usando xvfb (display virtual):
- Resolução: 300 DPI
- Formato: JPEG de alta qualidade
- Taxa de sucesso: 100% (11/11 figuras)

### `regenerar_imagens.m`
Regenera especificamente as imagens 5.2, 5.3 e 5.4 usando `imwrite()` direto para garantir qualidade.

## 📝 Características Técnicas

- **Linguagem**: MATLAB/Octave
- **Versão Testada**: GNU Octave 8.4.0
- **Toolkit Gráfico**: gnuplot (compatível com ambiente headless)
- **Operações Vetorizadas**: Usadas sempre que possível para melhor performance
- **Gerenciamento de Figuras**: Formato nativo (.fig) + exportação JPEG
- **Controle de Versão**: Git com branch `final`

## 🎯 Resultados e Observações

✅ **Todas as questões implementadas e validadas**
- Gráficos gerados corretamente (11 figuras)
- Operações vetoriais **600-700x mais rápidas** que loops FOR
- Processamento de áudio funcional (leitura e análise)
- Processamento de imagem com binarização eficiente
- Geração de sinais complexos (parte real e imaginária)

## 📚 Arquivos de Dados

- **musica.wav**: Arquivo de áudio para análise de forma de onda
- **teste.bmp**: Imagem para operações de binarização
- **teste1.bmp**: Imagem para visualização 3D (mesh/contour)
- **BOLA.WAV**: Arquivo de áudio adicional

## 🔗 Links

- **Repositório**: https://github.com/joaomanuel7/processamento_digital_de_sinais
- **Branch**: final

## 👨‍💻 Desenvolvimento

Trabalho desenvolvido para a disciplina de Processamento Digital de Sinais.
Implementação completa seguindo as especificações do arquivo `Trabalho1_PDS (1).pdf`.

## 📄 Licença

Este projeto é de uso educacional.
