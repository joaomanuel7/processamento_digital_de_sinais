"""
Exercício 3 - Operações com Matrizes
Processamento Digital de Sinais
"""

import numpy as np
import time

# 3.1 - Definição das matrizes
A = np.array([[2, 3, 4],
              [4, 4, 4],
              [8, 9, 0]])

C = np.array([[1, 2],
              [3, 4],
              [1, 1]])

print("3.1 - Matrizes definidas:")
print("Matriz A:")
print(A)
print("\nMatriz C:")
print(C)
print()

# 3.2 - Multiplicação de matrizes
resultado_AC = np.matmul(A, C)
print("3.2 - Multiplicação A * C:")
print(resultado_AC)
print("\nPropriedade comutativa:")
print("A propriedade comutativa NÃO é válida para multiplicação de matrizes.")
print("Neste caso, C * A nem sequer é possível, pois as dimensões são incompatíveis.")
print("A é 3x3 e C é 3x2, então A*C resulta em uma matriz 3x2.")
print("Para C*A ser possível, seria necessário que o número de colunas de C")
print("fosse igual ao número de linhas de A, o que não ocorre.")
print()

# 3.3 - Multiplicação elemento a elemento
print("3.3 - Operação elemento a elemento:")
print("A operação A.*C não é possível pois A é 3x3 e C é 3x2.")
print("Para realizar multiplicação elemento a elemento, as matrizes devem ter as mesmas dimensões.")
print()

D = np.ones((3, 3))
resultado_AD = A * D  # multiplicação elemento a elemento
print("Matriz D (3x3 de uns):")
print(D)
print("\nA .* D (multiplicação elemento a elemento):")
print(resultado_AD)
print("Esta operação multiplica cada elemento de A pelo elemento correspondente de D.")
print("Como D contém apenas uns, o resultado é igual à matriz A original.")
print()

# 3.4 - Comparação de eficiência: loop vs operação vetorial
M = np.ones((1500, 1500))

# Método 1: usando loop
print("3.4 - Teste de eficiência:")
print("Multiplicando matriz 1500x1500 por 5...")

inicio = time.time()
M_loop = np.copy(M)
for i in range(M_loop.shape[0]):
    for j in range(M_loop.shape[1]):
        M_loop[i, j] = M_loop[i, j] * 5
tempo_loop = time.time() - inicio

# Método 2: operação vetorial
inicio = time.time()
M_vetorial = M * 5
tempo_vetorial = time.time() - inicio

print(f"\nTempo com loop FOR: {tempo_loop:.4f} segundos")
print(f"Tempo com operação vetorial: {tempo_vetorial:.6f} segundos")
print(f"Razão de velocidade: {tempo_loop/tempo_vetorial:.2f}x mais rápido")
print("\nConclusão: A operação vetorial é MUITO mais eficiente que loops FOR.")
print("Python/NumPy realiza operações vetorizadas de forma otimizada em baixo nível,")
print("aproveitando processamento paralelo e otimizações de hardware.")
print()

# 3.5 - Operações com média
X = np.array([[5, 8, 3],
              [2, 7, 9]])

M_media = np.mean(X, axis=1, keepdims=True)
X1 = X - M_media * np.ones((1, 3))

print("3.5 - Matriz X original:")
print(X)
print("\nMédia de cada linha (M):")
print(M_media)
print("\nMatriz X1 = X - M*ones(1,3):")
print(X1)
print()

# 3.6 - Diferenças entre X e X1
print("3.6 - Análise das diferenças entre X e X1:")
print("A matriz X1 é a matriz X centralizada, ou seja, cada linha teve sua média subtraída.")
print("Isso remove o nível DC de cada linha, centralizando os valores em torno de zero.")
print(f"\nMédia das linhas de X: {np.mean(X, axis=1)}")
print(f"Média das linhas de X1: {np.mean(X1, axis=1)}")
print("\nObserve que a média de cada linha de X1 é aproximadamente zero (dentro do erro numérico).")
print("Esta operação é comum em processamento de sinais para remover o componente DC.")
