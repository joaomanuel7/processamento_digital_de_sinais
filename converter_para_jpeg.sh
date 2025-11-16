#!/bin/bash
# Script para converter todas as figuras .fig para JPEG

echo "=== CONVERSÃO .FIG PARA JPEG ==="
echo ""

# Criar diretório JPEG
mkdir -p figuras/jpeg

# Contador
total=0
sucessos=0
falhas=0

# Contar arquivos
total=$(ls figuras/*.fig 2>/dev/null | wc -l)
echo "Encontrados $total arquivos .fig"
echo ""

# Converter cada arquivo
for fig_file in figuras/*.fig; do
    if [ -f "$fig_file" ]; then
        # Extrair nome do arquivo
        basename=$(basename "$fig_file")
        name="${basename%.fig}"
        jpeg_file="figuras/jpeg/${name}.jpg"
        
        echo -n "Convertendo: $name... "
        
        # Converter usando xvfb-run
        DISPLAY=:99 xvfb-run -a octave-cli --eval "
            fig = openfig('$fig_file');
            print(fig, '$jpeg_file', '-djpeg', '-r300');
            close(fig);
        " > /dev/null 2>&1
        
        # Verificar se foi criado
        if [ -f "$jpeg_file" ]; then
            size=$(du -h "$jpeg_file" | cut -f1)
            echo "✓ OK ($size)"
            ((sucessos++))
        else
            echo "✗ FALHA"
            ((falhas++))
        fi
    fi
done

echo ""
echo "=== RESULTADO ==="
echo "Convertidas com sucesso: $sucessos"
echo "Falhas: $falhas"
echo ""
echo "Arquivos salvos em: figuras/jpeg/"

# Criar índice
cat > figuras/jpeg/INDICE.txt << EOF
FIGURAS JPEG - TRABALHO 1 PDS
==============================

Total: $sucessos figuras
Formato: JPEG
Resolução: 300 DPI

Arquivos:
=========

EOF

i=1
for jpeg_file in figuras/jpeg/*.jpg; do
    if [ -f "$jpeg_file" ]; then
        basename=$(basename "$jpeg_file")
        echo "$i. $basename" >> figuras/jpeg/INDICE.txt
        ((i++))
    fi
done

echo ""
echo "Índice criado: figuras/jpeg/INDICE.txt"
echo ""
echo "=== CONCLUÍDO ==="
