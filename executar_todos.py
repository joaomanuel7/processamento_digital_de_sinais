"""
Script para executar todos os exercícios do trabalho de PDS
Processamento Digital de Sinais
"""

import sys
import subprocess

exercicios = [
    ('exercicio_2.py', 'Exercício 2 - Operações com Vetores'),
    ('exercicio_3.py', 'Exercício 3 - Operações com Matrizes'),
    ('exercicio_4.py', 'Exercício 4 - Operações com Arquivos de Áudio'),
    ('exercicio_5.py', 'Exercício 5 - Operações com Arquivos de Imagem'),
    ('exercicio_6.py', 'Exercício 6 - Atividades Finais')
]

print("=" * 80)
print("TRABALHO 1 - PROCESSAMENTO DIGITAL DE SINAIS")
print("Executando todos os exercícios...")
print("=" * 80)
print()

for arquivo, descricao in exercicios:
    print(f"\n{'=' * 80}")
    print(f"Executando: {descricao}")
    print(f"Arquivo: {arquivo}")
    print('=' * 80)
    print()
    
    try:
        resultado = subprocess.run([sys.executable, arquivo], 
                                  capture_output=False, 
                                  text=True, 
                                  check=True)
        print(f"\n✓ {descricao} executado com sucesso!")
        
    except subprocess.CalledProcessError as e:
        print(f"\n✗ Erro ao executar {descricao}")
        print(f"Código de erro: {e.returncode}")
        
    except FileNotFoundError:
        print(f"\n✗ Arquivo {arquivo} não encontrado!")
    
    print()
    input("Pressione Enter para continuar com o próximo exercício...")

print("\n" + "=" * 80)
print("TODOS OS EXERCÍCIOS FORAM EXECUTADOS!")
print("=" * 80)
print("\nArquivos gerados:")
print("  - Gráficos PNG de todos os exercícios")
print("  - Arquivos de áudio WAV (exercício 4)")
print("  - Arquivos de imagem BMP (exercício 5)")
print("\nVerifique os resultados no diretório atual.")
