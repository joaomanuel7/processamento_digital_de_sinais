# Instruções de Instalação

## Para Ubuntu/Debian

### Instalar GNU Octave
```bash
sudo apt update
sudo apt install octave
```

### Instalar pacotes adicionais (opcional, mas recomendado)
```bash
sudo apt install octave-signal octave-image
```

## Para Fedora/Red Hat
```bash
sudo dnf install octave
```

## Para Arch Linux
```bash
sudo pacman -S octave
```

## Verificar Instalação
Após instalar, verifique com:
```bash
octave --version
```

## Executar o Trabalho

### Opção 1: Modo Interativo
```bash
octave
```
Depois no console do Octave:
```matlab
trabalho1_completo
```

### Opção 2: Modo Batch
```bash
octave --no-gui trabalho1_completo.m
```

### Opção 3: Executar script específico
```bash
octave --no-gui questao_6_2_i_vetorial.m
```

## Alternativa Online
Se não puder instalar, use o Octave Online:
- Acesse: https://octave-online.net/
- Faça upload dos arquivos .m
- Execute os scripts diretamente no navegador

## Problemas Comuns

### Áudio não funciona
Se houver problemas com áudio, comente as linhas com `soundsc()` no código.

### Imagens não aparecem
Certifique-se de que o ambiente gráfico está disponível. No modo `--no-gui`, use:
```bash
octave --no-gui --persist trabalho1_completo.m
```

### Erro "função não encontrada"
Verifique se todos os arquivos .m estão no mesmo diretório.
