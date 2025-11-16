# Trabalho 1 - Processamento Digital de Sinais (PDS)
## Python aplicado ao PDS

Este repositório contém a implementação em Python dos exercícios do Trabalho 1 da disciplina de Processamento Digital de Sinais.

## Estrutura dos Arquivos

- `exercicio_2.py` - Operações com Vetores
- `exercicio_3.py` - Operações com Matrizes  
- `exercicio_4.py` - Operações com Arquivos de Áudio
- `exercicio_5.py` - Operações com Arquivos de Imagem
- `exercicio_6.py` - Atividades Finais
- `executar_todos.py` - Script para executar todos os exercícios sequencialmente

## Requisitos

```bash
pip install numpy matplotlib scipy pillow
```

## Como Executar

### Executar todos os exercícios:
```bash
python executar_todos.py
```

### Executar exercícios individuais:
```bash
python exercicio_2.py
python exercicio_3.py
python exercicio_4.py
python exercicio_5.py
python exercicio_6.py
```

## Descrição dos Exercícios

### Exercício 2 - Operações com Vetores
- Criação e manipulação de vetores
- Geração de sinais periódicos
- Cálculo de período e frequência fundamental
- Visualização de sinais discretos

### Exercício 3 - Operações com Matrizes
- Multiplicação de matrizes
- Operações elemento a elemento
- Análise de eficiência: loops vs operações vetoriais
- Centralização de dados (remoção do nível DC)

### Exercício 4 - Operações com Arquivos de Áudio
- Leitura e escrita de arquivos WAV
- Análise de sinais de áudio
- Efeitos da taxa de amostragem
- Visualização de formas de onda

### Exercício 5 - Operações com Arquivos de Imagem
- Leitura e processamento de imagens
- Binarização de imagens com diferentes limiares
- Visualização 3D (mesh) e mapas de contorno
- Análise de intensidade de pixels

### Exercício 6 - Atividades Finais
- Função linspace() e suas aplicações
- Geração de sinais usando loops e operações vetoriais
- Sinais complexos e visualização no plano complexo
- Análise de magnitude e fase

## Resultados

Cada exercício gera:
- Gráficos em formato PNG
- Arquivos de dados (áudio WAV, imagens BMP quando aplicável)
- Saída detalhada no console com análises e explicações

## Observações

- Os códigos incluem comentários detalhados
- Comparações entre métodos iterativos e vetoriais
- Análises teóricas dos resultados obtidos
- Exemplos práticos de aplicações em PDS

## Autor

Trabalho desenvolvido para a disciplina de Processamento Digital de Sinais
