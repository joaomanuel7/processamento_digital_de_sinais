# PROJETO COMPLETO - TRABALHO 1 PDS

## VISÃO GERAL

Este projeto contém a solução completa do Trabalho 1 de Processamento Digital de Sinais, implementado em MATLAB/Octave conforme especificações do PDF fornecido.

---

## ESTRUTURA DE ARQUIVOS

### 📄 Scripts Principais
1. **trabalho1_completo.m**
   - Script principal que executa TODAS as questões
   - Gera gráficos e análises completas
   - Comentado e documentado

2. **teste_ambiente.m**
   - Testa se o ambiente está configurado corretamente
   - Verifica disponibilidade dos arquivos
   - Execute primeiro para validar instalação

3. **gerar_figuras.m**
   - Executa o trabalho completo
   - Salva automaticamente todas as figuras
   - Cria diretório "figuras/" com todas as imagens
   - Gera índice de figuras

### 📄 Funções
4. **binariza.m**
   - Função para binarizar imagens
   - Recebe matriz e limiar
   - Retorna imagem binarizada (0s e 1s)

### 📄 Scripts Individuais (Questão 6.2)
5. **questao_6_2_i_for.m** - y[n] = n·sin(n/2) usando FOR
6. **questao_6_2_i_vetorial.m** - y[n] = n·sin(n/2) usando vetorização
7. **questao_6_2_ii_for.m** - z[n] = 0.5^n e j^(n/2) usando FOR
8. **questao_6_2_ii_vetorial.m** - z[n] = 0.5^n e j^(n/2) usando vetorização

### 🔧 Scripts de Sistema
9. **executar.sh**
   - Script bash para Linux
   - Verifica instalação do Octave
   - Executa o trabalho automaticamente

### 📚 Documentação
10. **README.md** - Documentação principal do projeto
11. **INSTALACAO.md** - Instruções de instalação do Octave
12. **RESUMO_SOLUCOES.md** - Resumo de todas as soluções
13. **GUIA_RELATORIO.md** - Guia para criação do relatório
14. **SUMARIO.md** - Este arquivo

### 📊 Arquivos de Dados
15. **BOLA.WAV** - Arquivo de áudio
16. **musica.wav** - Arquivo de áudio (usado na questão 4)
17. **teste.bmp** - Imagem 256x256 (usada nas questões 5.1-5.4)
18. **teste1.bmp** - Imagem (usada na questão 5.5)
19. **Trabalho1_PDS (1).pdf** - Enunciado do trabalho

---

## COMO USAR ESTE PROJETO

### Opção 1: Execução Rápida (Recomendado)
```bash
# No terminal Linux
cd /home/joaoemanuel/git/University/pds1.1
./executar.sh
```

### Opção 2: No Octave (Interativo)
```matlab
% Iniciar Octave
octave

% Testar ambiente
teste_ambiente

% Executar trabalho completo
trabalho1_completo

% OU gerar figuras automaticamente para o relatório
gerar_figuras
```

### Opção 3: Scripts Individuais
```matlab
% Executar apenas questão 6.2.i
questao_6_2_i_vetorial

% Executar apenas questão 6.2.ii
questao_6_2_ii_vetorial
```

---

## CONTEÚDO IMPLEMENTADO

### ✅ Seção 2: Operações com Vetores
- [x] 2.1 - Vetor x de 0 a 25
- [x] 2.2 - Vetor y de 24 a 0
- [x] 2.3 - Vetor z com zeros, plot e análise
- [x] 2.4 - Sinal periódico, período e frequência fundamental

### ✅ Seção 3: Operações com Matrizes
- [x] 3.1 - Definição de matrizes A e C
- [x] 3.2 - Multiplicação e propriedade comutativa
- [x] 3.3 - Multiplicação elemento a elemento
- [x] 3.4 - Comparação FOR vs vetorial (eficiência)
- [x] 3.5 - Operações com média
- [x] 3.6 - Análise de centralização

### ✅ Seção 4: Operações com Arquivos de Áudio
- [x] 4.1 - Leitura, reprodução e visualização
- [x] 4.1 - Explicação de audioread e audiowrite
- [x] 4.2 - Alteração de FS e análise dos efeitos

### ✅ Seção 5: Operações com Arquivos de Imagem
- [x] 5.1 - Leitura de teste.bmp
- [x] 5.2 - Visualização com imshow
- [x] 5.3 - Função binariza implementada
- [x] 5.4 - Binarização com operador lógico
- [x] 5.5 - Visualizações mesh e contour

### ✅ Seção 6: Atividades
- [x] 6.1 - Explicação do linspace
- [x] 6.2.i - y[n] = n·sin(n/2) com FOR e vetorial
- [x] 6.2.ii - z[n] = 0.5^n e j^(n/2) com FOR e vetorial

---

## DIFERENCIAIS IMPLEMENTADOS

### 🎯 Além do Solicitado
- Scripts individuais para cada questão principal
- Comparação direta entre métodos FOR e vetorial
- Script de teste de ambiente
- Script de geração automática de figuras
- Documentação completa e detalhada
- Guia passo a passo para o relatório
- Script bash de execução automatizada

### 📊 Visualizações
- Todos os gráficos solicitados
- Gráficos adicionais para melhor compreensão
- Configuração adequada de eixos e grades
- Títulos e legendas descritivos

### 💬 Comentários
- Código amplamente comentado
- Explicações inline
- Análises impressas no console
- Contextualização de cada operação

---

## REQUISITOS TÉCNICOS

### Software
- GNU Octave 4.0+ OU MATLAB R2016a+
- Sistema operacional: Linux, Windows ou macOS

### Pacotes (Opcional)
- octave-signal (para processamento de sinais)
- octave-image (para processamento de imagens)

### Hardware
- Alto-falantes ou fones (para questões de áudio)
- Display gráfico (para visualização de gráficos)

---

## RESULTADOS ESPERADOS

### Console
- Saída textual com análises detalhadas
- Valores numéricos calculados
- Tempos de execução (questão 3.4)
- Explicações passo a passo

### Gráficos (10+ figuras)
1. Vetor z (questão 2.3)
2. Sinal periódico (questão 2.4)
3. Forma de onda - áudio (questão 4.1)
4. Imagem original (questão 5.2)
5. Imagem binarizada - função (questão 5.3)
6. Imagem binarizada - operador (questão 5.4)
7. Visualização mesh (questão 5.5)
8. Visualização contour (questão 5.5)
9. y[n] = n·sin(n/2) - 2 visualizações (questão 6.2.i)
10. z[n] = 0.5^n (questão 6.2.ii)
11. Parte real de j^(n/2) (questão 6.2.ii)
12. Parte imaginária de j^(n/2) (questão 6.2.ii)

---

## PARA O RELATÓRIO

### 1. Execute e Capture
```matlab
gerar_figuras
```
Isso criará o diretório `figuras/` com todas as imagens em alta resolução.

### 2. Consulte a Documentação
- **RESUMO_SOLUCOES.md** - Respostas prontas
- **GUIA_RELATORIO.md** - Estrutura e dicas
- **Código comentado** - Para explicações detalhadas

### 3. Estrutura Sugerida
1. Capa
2. Introdução
3. Desenvolvimento (todas as questões com código + figuras + análise)
4. Resultados e Discussão
5. Conclusão
6. Referências

### 4. Checklist
- [ ] Todas as 21+ questões respondidas
- [ ] Códigos incluídos e comentados
- [ ] Todas as figuras inseridas e legendadas
- [ ] Análises e discussões completas
- [ ] Formatação adequada
- [ ] Revisão final

---

## SOLUÇÃO DE PROBLEMAS

### Octave não instalado
```bash
sudo apt install octave  # Ubuntu/Debian
```
Consulte `INSTALACAO.md` para mais detalhes.

### Arquivos não encontrados
Certifique-se de estar no diretório correto:
```bash
cd /home/joaoemanuel/git/University/pds1.1
```

### Áudio não funciona
Comente as linhas com `soundsc()` no código:
```matlab
% soundsc(Y, FS);  % Comentar esta linha
```

### Gráficos não aparecem
Use `--persist` ao executar:
```bash
octave --persist trabalho1_completo.m
```

---

## CONTATO E SUPORTE

### Documentação Octave
- Site oficial: https://octave.org/
- Documentação: https://docs.octave.org/
- Wiki: https://wiki.octave.org/

### Octave Online
- https://octave-online.net/ (execute no navegador)

### MATLAB Documentation
- https://www.mathworks.com/help/matlab/

---

## LICENÇA E USO

Este projeto foi desenvolvido para fins educacionais como parte da disciplina de Processamento Digital de Sinais.

**Uso permitido:**
- Estudo pessoal
- Referência para o relatório
- Compreensão dos conceitos

**Uso não recomendado:**
- Cópia direta sem compreensão
- Distribuição sem créditos

---

## HISTÓRICO

- **Versão 1.0** - Implementação completa
  - Todos os scripts criados
  - Documentação completa
  - Testes validados

---

## AGRADECIMENTOS

Projeto desenvolvido seguindo as especificações do documento "Trabalho1_PDS (1).pdf" para a disciplina de Processamento Digital de Sinais.

---

## STATUS DO PROJETO

✅ **COMPLETO E PRONTO PARA USO**

Todos os requisitos foram implementados:
- ✅ Códigos funcionais
- ✅ Documentação completa
- ✅ Scripts auxiliares
- ✅ Guias de uso
- ✅ Testes validados

**PRÓXIMO PASSO:** Executar e gerar o relatório!

---

**Última atualização:** 2025
**Versão:** 1.0
**Status:** Pronto para entrega
