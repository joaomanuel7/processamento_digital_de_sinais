"""
Exercício 2 - Operações com Vetores
Processamento Digital de Sinais
"""

import numpy as np
import matplotlib.pyplot as plt

# 2.1 - Vetor x com valores de 0 a 25, espaçados de 1 em 1
x = np.arange(0, 26, 1)
print("2.1 - Vetor x:")
print(x)
print()

# 2.2 - Vetor y com valores de 24 a 0, espaçados de 1 em 1
y = np.arange(24, -1, -1)
print("2.2 - Vetor y:")
print(y)
print()

# 2.3 - Vetor z de 100 elementos
z = np.zeros(100)
n = np.arange(0, 100)

z[0:26] = x
z[26:51] = y

plt.figure(figsize=(10, 6))
plt.plot(n, z)
plt.axis([-2, 100, -1, 30])
plt.grid(True)
plt.xlabel('n (amostras)')
plt.ylabel('z[n]')
plt.title('Gráfico do Sinal z[n]')
plt.savefig('exercicio_2_3.png')
plt.show()

print("2.3 - Análise do código:")
print("- n = np.arange(0, 100): cria um vetor de índices de 0 a 99")
print("- z[0:26] = x: preenche as primeiras 26 posições de z com o vetor x")
print("- z[26:51] = y: preenche as posições de 26 a 50 com o vetor y")
print("- plot(n, z): plota o sinal z em função do índice n")
print("- axis([-2, 100, -1, 30]): define os limites dos eixos x e y")
print("- grid(True): adiciona uma grade ao gráfico")
print()

# 2.4 - Sinal periódico com três períodos
zp = np.concatenate([z, z, z])
n_periodico = np.arange(0, len(zp))

plt.figure(figsize=(12, 6))
plt.stem(n_periodico, zp, basefmt=' ')
plt.xlabel('n (amostras)')
plt.ylabel('zp[n]')
plt.title('Sinal Periódico zp[n] - 3 Períodos')
plt.grid(True)
plt.savefig('exercicio_2_4.png')
plt.show()

# Cálculo do período e frequência fundamental
periodo_amostras = 100
fs = 8000  # Hz
periodo_fundamental = periodo_amostras / fs
freq_fundamental = 1 / periodo_fundamental

print("2.4 - Características do sinal periódico:")
print(f"- Período em amostras: {periodo_amostras}")
print(f"- Frequência de amostragem: {fs} Hz")
print(f"- Período fundamental: {periodo_fundamental * 1000:.2f} ms")
print(f"- Frequência fundamental: {freq_fundamental:.2f} Hz")
