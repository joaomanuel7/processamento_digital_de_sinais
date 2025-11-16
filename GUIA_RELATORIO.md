# GUIA PARA CRIAÇÃO DO RELATÓRIO

## Estrutura Sugerida do Relatório

### 1. CAPA
- Título: Trabalho 1 - Processamento Digital de Sinais
- Subtítulo: MATLAB/Octave aplicado ao PDS
- Nome do aluno
- Curso
- Disciplina
- Professor
- Data

### 2. INTRODUÇÃO
Descrever brevemente:
- Objetivos do trabalho
- Ferramentas utilizadas (MATLAB/Octave)
- Organização do documento

### 3. DESENVOLVIMENTO

#### 3.1 Operações com Vetores (Questões 2.1 a 2.4)
Para cada questão:
- **Código utilizado**
- **Figura gerada** (quando aplicável)
- **Análise dos resultados**

Exemplo para 2.3:
```
Código:
x = 0:1:25;
y = 24:-1:0;
z = zeros(1, 100);
n = 0:99;
z(1:26) = x;
z(27:51) = y;
plot(n,z);
axis([-2 100 -1 30]);
grid;

Análise:
- n = 0:99 cria vetor de índices
- z(1:26) = x preenche primeiras 26 posições
- z(27:51) = y preenche posições 27-51 com valores decrescentes
- As demais posições permanecem zero
- O gráfico mostra rampa crescente, seguida de rampa decrescente
- axis() define os limites de visualização
- grid adiciona grade para melhor leitura

[INSERIR FIGURA DO GRÁFICO]
```

#### 3.2 Operações com Matrizes (Questões 3.1 a 3.6)
Seguir mesmo padrão:
- Código
- Resultados obtidos
- Discussão

**Atenção especial:**
- 3.2: Discutir propriedade comutativa
- 3.4: Apresentar tabela comparativa de tempos
- 3.6: Explicar conceito de centralização

#### 3.3 Operações com Arquivos de Áudio (Questões 4.1 e 4.2)
- Apresentar forma de onda
- Explicar funções audioread, soundsc, audiowrite
- Discutir efeitos da alteração de FS

#### 3.4 Operações com Arquivos de Imagem (Questões 5.1 a 5.5)
- Incluir imagens originais e processadas
- Comparar diferentes métodos de binarização
- Apresentar visualizações mesh e contour

#### 3.5 Atividades (Questões 6.1 e 6.2)
- Explicar linspace
- Apresentar código com FOR e vetorial
- Comparar as duas abordagens

### 4. RESULTADOS E DISCUSSÃO

Sintetizar os principais aprendizados:
- Eficiência de operações vetoriais vs laços
- Importância da escolha adequada de funções
- Aplicações práticas de processamento de sinais
- Vantagens do MATLAB/Octave para PDS

### 5. CONCLUSÃO

Resumir:
- Objetivos alcançados
- Dificuldades encontradas
- Conhecimentos adquiridos
- Aplicabilidade dos conceitos

### 6. REFERÊNCIAS

Sugestões:
- Manual do MATLAB/Octave
- Material da disciplina
- Documentação das funções utilizadas

---

## Como Capturar as Figuras

### Método 1: Durante a execução
1. Execute `trabalho1_completo.m`
2. Cada figura aparecerá em janela separada
3. Use File → Save As para salvar cada figura
4. Salve em formato PNG ou JPG

### Método 2: Salvamento automático
Adicione ao final de cada bloco de plot:
```matlab
saveas(gcf, 'nome_figura.png');
```

### Método 3: Script para salvar todas as figuras
Crie arquivo `salvar_figuras.m`:
```matlab
% Executa trabalho e salva figuras automaticamente
trabalho1_completo;

% Salvar todas as figuras abertas
figHandles = findall(0, 'Type', 'figure');
for i = 1:length(figHandles)
    figure(figHandles(i));
    saveas(figHandles(i), sprintf('figura_%02d.png', i));
end
```

---

## Checklist do Relatório

- [ ] Capa completa
- [ ] Introdução clara
- [ ] Todas as 21+ questões respondidas
- [ ] Códigos incluídos e formatados
- [ ] Todas as figuras inseridas
- [ ] Análises e comentários em cada questão
- [ ] Discussão sobre eficiência (FOR vs vetorial)
- [ ] Explicação das funções principais
- [ ] Conclusão abrangente
- [ ] Formatação adequada
- [ ] Revisão ortográfica
- [ ] Numeração de páginas
- [ ] Índice (opcional)
- [ ] Referências

---

## Dicas de Formatação

### Para Código no Relatório
Use fonte monoespaçada (Courier, Consolas):
```
x = 0:1:25;
y = 24:-1:0;
```

### Para Figuras
- Centralize as imagens
- Adicione legendas descritivas
- Numere as figuras (Figura 1, Figura 2, etc.)
- Referencie no texto ("como mostra a Figura 3...")

### Para Equações
Use editor de equações ou LaTeX:
- y[n] = n·sin(n/2)
- z[n] = 0.5^n
- f₀ = fs/N

---

## Ferramentas Recomendadas

### Editor de Texto
- Microsoft Word
- LibreOffice Writer
- LaTeX (para relatórios mais profissionais)
- Google Docs

### Captura de Tela
- Ferramenta nativa do SO
- Flameshot (Linux)
- Snipping Tool (Windows)
- Screenshot (macOS)

---

## Estimativa de Páginas

- Capa: 1 página
- Introdução: 1 página
- Seção 2 (Vetores): 3-4 páginas
- Seção 3 (Matrizes): 4-5 páginas
- Seção 4 (Áudio): 2-3 páginas
- Seção 5 (Imagem): 3-4 páginas
- Seção 6 (Atividades): 2-3 páginas
- Conclusão: 1-2 páginas
- Referências: 1 página

**Total estimado: 18-25 páginas**

---

## Arquivos de Apoio

Consulte os seguintes arquivos para facilitar:
1. `RESUMO_SOLUCOES.md` - Respostas resumidas
2. `trabalho1_completo.m` - Código completo comentado
3. `README.md` - Documentação do projeto

---

## Última Verificação

Antes de entregar:
1. Execute todo o código novamente
2. Verifique se todas as figuras foram incluídas
3. Confira a numeração de seções
4. Revise texto (gramática e ortografia)
5. Verifique formatação consistente
6. Certifique-se de que o PDF foi gerado corretamente
7. Teste a leitura do arquivo no Moodle (se aplicável)

**BOA SORTE!**
