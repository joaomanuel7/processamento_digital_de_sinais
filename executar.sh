#!/bin/bash
# Script para executar o trabalho de PDS no Octave

echo "=============================================="
echo "   Trabalho 1 - Processamento Digital de Sinais"
echo "=============================================="
echo ""

# Verificar se o Octave está instalado
if ! command -v octave &> /dev/null
then
    echo "ERRO: Octave não está instalado!"
    echo ""
    echo "Para instalar no Ubuntu/Debian:"
    echo "  sudo apt update"
    echo "  sudo apt install octave"
    echo ""
    echo "Para mais informações, consulte INSTALACAO.md"
    exit 1
fi

echo "Octave encontrado: $(octave --version | head -n 1)"
echo ""

# Verificar arquivos necessários
echo "Verificando arquivos necessários..."
arquivos_ok=true

for arquivo in "BOLA.WAV" "musica.wav" "teste.bmp" "teste1.bmp" "trabalho1_completo.m" "binariza.m"
do
    if [ -f "$arquivo" ]; then
        echo "✓ $arquivo"
    else
        echo "✗ $arquivo (NÃO ENCONTRADO)"
        arquivos_ok=false
    fi
done

echo ""

if [ "$arquivos_ok" = false ]; then
    echo "AVISO: Alguns arquivos não foram encontrados."
    echo "O script pode gerar erros."
    echo ""
fi

echo "Executando trabalho1_completo.m..."
echo "Pressione Ctrl+C para interromper."
echo ""
echo "=============================================="
echo ""

# Executar o script principal
octave --no-gui --persist trabalho1_completo.m

echo ""
echo "=============================================="
echo "Execução concluída!"
echo "Verifique os gráficos e resultados gerados."
echo "=============================================="
