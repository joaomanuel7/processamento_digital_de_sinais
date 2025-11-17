#!/usr/bin/env python3
"""
Script para extrair dados dos arquivos .fig e gerar imagens JPEG
Usa matplotlib para recriar os gráficos
"""

import os
import subprocess
import glob

print("=== CONVERSÃO .FIG PARA JPEG ===\n")

# Diretório de figuras
figuras_dir = "figuras"
jpeg_dir = os.path.join(figuras_dir, "jpeg")

# Criar diretório JPEG
os.makedirs(jpeg_dir, exist_ok=True)

# Listar arquivos .fig
fig_files = glob.glob(os.path.join(figuras_dir, "*.fig"))
print(f"Encontrados {len(fig_files)} arquivos .fig\n")

sucessos = 0
falhas = 0

for fig_file in fig_files:
    basename = os.path.basename(fig_file)
    name = os.path.splitext(basename)[0]
    jpeg_file = os.path.join(jpeg_dir, f"{name}.jpg")
    
    print(f"Convertendo: {name}...", end=" ")
    
    # Tentar converter usando octave em modo batch com DISPLAY virtual
    octave_cmd = f"""
    setenv('DISPLAY', ':99');
    fig = openfig('{fig_file}', 'invisible');
    print(fig, '{jpeg_file}', '-djpeg', '-r300');
    close(fig);
    """
    
    try:
        # Executar com xvfb-run (display virtual)
        result = subprocess.run(
            ['xvfb-run', '-a', 'octave-cli', '--eval', octave_cmd],
            capture_output=True,
            text=True,
            timeout=30
        )
        
        if os.path.exists(jpeg_file):
            size_kb = os.path.getsize(jpeg_file) // 1024
            print(f"✓ OK ({size_kb} KB)")
            sucessos += 1
        else:
            print("✗ FALHA")
            falhas += 1
            
    except subprocess.TimeoutExpired:
        print("✗ TIMEOUT")
        falhas += 1
    except Exception as e:
        print(f"✗ ERRO: {e}")
        falhas += 1

print(f"\n=== RESULTADO ===")
print(f"Convertidas com sucesso: {sucessos}")
print(f"Falhas: {falhas}")
print(f"\nArquivos salvos em: {jpeg_dir}/")
