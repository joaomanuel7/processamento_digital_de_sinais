"""
Exercício 6 - Atividades Finais
Processamento Digital de Sinais
"""

import numpy as np
import matplotlib.pyplot as plt
import time

# 6.1 - Descrição do comando linspace
print("=" * 70)
print("6.1 - Descrição do comando linspace")
print("=" * 70)

print("\nComando: x = np.linspace(x1, x2, N)")
print("\nDescrição:")
print("-" * 70)
print("A função linspace() gera um vetor com N valores igualmente espaçados")
print("no intervalo [x1, x2], incluindo os extremos.")
print("\nParâmetros:")
print("  x1  : valor inicial do intervalo")
print("  x2  : valor final do intervalo")
print("  N   : número de pontos a serem gerados")
print("\nCaracterísticas:")
print("  - Os pontos são distribuídos uniformemente")
print("  - Ambos os extremos (x1 e x2) são INCLUÍDOS")
print("  - O espaçamento entre pontos é: Δx = (x2 - x1) / (N - 1)")
print("\nExemplos práticos:")

exemplos = [
    (0, 10, 11),
    (0, 1, 5),
    (-5, 5, 21)
]

for x1, x2, N in exemplos:
    x = np.linspace(x1, x2, N)
    espacamento = (x2 - x1) / (N - 1)
    print(f"\n  linspace({x1}, {x2}, {N}):")
    print(f"    Resultado: {x}")
    print(f"    Espaçamento: {espacamento:.4f}")

print("\nDiferença entre linspace e arange:")
print("  - linspace: especifica o NÚMERO de pontos")
print("  - arange:   especifica o PASSO entre pontos")
print("  - linspace: sempre INCLUI o ponto final")
print("  - arange:   pode NÃO incluir o ponto final")

# 6.2.i - Gerar e traçar y[n] = n*sen(n/2) para 0 <= n <= 10
print("\n\n" + "=" * 70)
print("6.2.i - Gerar e traçar y[n] = n * sen(n/2) para 0 ≤ n ≤ 10")
print("=" * 70)

# Método 1: Usando laço FOR
def gerar_sinal_y_loop(n_max):
    """Gera y[n] = n * sen(n/2) usando laço FOR"""
    n_valores = np.arange(0, n_max + 1)
    y = np.zeros(len(n_valores))
    
    inicio = time.time()
    for i, n in enumerate(n_valores):
        y[i] = n * np.sin(n / 2)
    tempo_loop = time.time() - inicio
    
    return n_valores, y, tempo_loop

# Método 2: Operação vetorial
def gerar_sinal_y_vetorial(n_max):
    """Gera y[n] = n * sen(n/2) usando operação vetorial"""
    inicio = time.time()
    n_valores = np.arange(0, n_max + 1)
    y = n_valores * np.sin(n_valores / 2)
    tempo_vetorial = time.time() - inicio
    
    return n_valores, y, tempo_vetorial

# Gera os sinais com ambos os métodos
n1_loop, y1_loop, tempo1_loop = gerar_sinal_y_loop(10)
n1_vet, y1_vet, tempo1_vet = gerar_sinal_y_vetorial(10)

print("\nMétodo 1 - Usando laço FOR:")
print("-" * 70)
print("Código:")
print("    for i, n in enumerate(n_valores):")
print("        y[i] = n * np.sin(n / 2)")
print(f"\nTempo de execução: {tempo1_loop:.6f} segundos")
print(f"Valores de y[n]:")
for n, y in zip(n1_loop, y1_loop):
    print(f"  y[{n}] = {y:8.4f}")

print("\nMétodo 2 - Operação vetorial:")
print("-" * 70)
print("Código:")
print("    n_valores = np.arange(0, n_max + 1)")
print("    y = n_valores * np.sin(n_valores / 2)")
print(f"\nTempo de execução: {tempo1_vet:.6f} segundos")
print(f"Valores de y[n]:")
for n, y in zip(n1_vet, y1_vet):
    print(f"  y[{n}] = {y:8.4f}")

if tempo1_loop > 0:
    print(f"\nEficiência: Método vetorial é {tempo1_loop/tempo1_vet:.1f}x mais rápido")

# Visualização
fig, axes = plt.subplots(2, 2, figsize=(14, 10))

# Gráfico 1: Comparação dos métodos (stem)
axes[0, 0].stem(n1_loop, y1_loop, linefmt='b-', markerfmt='bo', basefmt=' ', label='Loop FOR')
axes[0, 0].stem(n1_vet, y1_vet, linefmt='r--', markerfmt='rs', basefmt=' ', label='Vetorial')
axes[0, 0].set_xlabel('n')
axes[0, 0].set_ylabel('y[n]')
axes[0, 0].set_title('y[n] = n · sen(n/2) - Comparação dos Métodos')
axes[0, 0].grid(True, alpha=0.3)
axes[0, 0].legend()

# Gráfico 2: Apenas o sinal (stem limpo)
axes[0, 1].stem(n1_vet, y1_vet, basefmt=' ')
axes[0, 1].set_xlabel('n')
axes[0, 1].set_ylabel('y[n]')
axes[0, 1].set_title('y[n] = n · sen(n/2)')
axes[0, 1].grid(True, alpha=0.3)

# 6.2.ii - Gerar e traçar z[n] = 0.5^n e j^(n/2) para 0 <= n <= 10
print("\n\n" + "=" * 70)
print("6.2.ii - Gerar e traçar z[n] = 0.5^n · e^(jn/2) para 0 ≤ n ≤ 10")
print("=" * 70)

# Método 1: Usando laço FOR
def gerar_sinal_z_loop(n_max):
    """Gera z[n] = 0.5^n * e^(jn/2) usando laço FOR"""
    n_valores = np.arange(0, n_max + 1)
    z = np.zeros(len(n_valores), dtype=complex)
    
    inicio = time.time()
    for i, n in enumerate(n_valores):
        z[i] = (0.5 ** n) * np.exp(1j * n / 2)
    tempo_loop = time.time() - inicio
    
    return n_valores, z, tempo_loop

# Método 2: Operação vetorial
def gerar_sinal_z_vetorial(n_max):
    """Gera z[n] = 0.5^n * e^(jn/2) usando operação vetorial"""
    inicio = time.time()
    n_valores = np.arange(0, n_max + 1)
    z = (0.5 ** n_valores) * np.exp(1j * n_valores / 2)
    tempo_vetorial = time.time() - inicio
    
    return n_valores, z, tempo_vetorial

# Gera os sinais com ambos os métodos
n2_loop, z2_loop, tempo2_loop = gerar_sinal_z_loop(10)
n2_vet, z2_vet, tempo2_vet = gerar_sinal_z_vetorial(10)

print("\nMétodo 1 - Usando laço FOR:")
print("-" * 70)
print("Código:")
print("    for i, n in enumerate(n_valores):")
print("        z[i] = (0.5 ** n) * np.exp(1j * n / 2)")
print(f"\nTempo de execução: {tempo2_loop:.6f} segundos")
print(f"Valores de z[n]:")
for n, z in zip(n2_loop, z2_loop):
    print(f"  z[{n}] = {z.real:7.4f} + {z.imag:7.4f}j  |z| = {abs(z):7.4f}  ∠{np.angle(z)*180/np.pi:7.2f}°")

print("\nMétodo 2 - Operação vetorial:")
print("-" * 70)
print("Código:")
print("    n_valores = np.arange(0, n_max + 1)")
print("    z = (0.5 ** n_valores) * np.exp(1j * n_valores / 2)")
print(f"\nTempo de execução: {tempo2_vet:.6f} segundos")
print(f"Valores de z[n]:")
for n, z in zip(n2_vet, z2_vet):
    print(f"  z[{n}] = {z.real:7.4f} + {z.imag:7.4f}j  |z| = {abs(z):7.4f}  ∠{np.angle(z)*180/np.pi:7.2f}°")

if tempo2_loop > 0:
    print(f"\nEficiência: Método vetorial é {tempo2_loop/tempo2_vet:.1f}x mais rápido")

# Gráfico 3: Parte real de z[n]
axes[1, 0].stem(n2_vet, z2_vet.real, basefmt=' ')
axes[1, 0].set_xlabel('n')
axes[1, 0].set_ylabel('Re{z[n]}')
axes[1, 0].set_title('Parte Real de z[n] = 0.5ⁿ · e^(jn/2)')
axes[1, 0].grid(True, alpha=0.3)

# Gráfico 4: Magnitude e fase de z[n]
ax_mag = axes[1, 1]
ax_fase = ax_mag.twinx()

stem1 = ax_mag.stem(n2_vet, np.abs(z2_vet), linefmt='b-', markerfmt='bo', 
                     basefmt=' ', label='Magnitude')
stem2 = ax_fase.stem(n2_vet, np.angle(z2_vet), linefmt='r--', markerfmt='rs', 
                      basefmt=' ', label='Fase (rad)')

ax_mag.set_xlabel('n')
ax_mag.set_ylabel('|z[n]|', color='b')
ax_fase.set_ylabel('∠z[n] (rad)', color='r')
ax_mag.set_title('Magnitude e Fase de z[n]')
ax_mag.grid(True, alpha=0.3)
ax_mag.tick_params(axis='y', labelcolor='b')
ax_fase.tick_params(axis='y', labelcolor='r')

# Adiciona legenda combinada
lines1, labels1 = ax_mag.get_legend_handles_labels()
lines2, labels2 = ax_fase.get_legend_handles_labels()
ax_mag.legend(lines1 + lines2, labels1 + labels2, loc='upper right')

plt.tight_layout()
plt.savefig('exercicio_6_sinais.png', dpi=150, bbox_inches='tight')
plt.show()

# Visualização adicional para z[n] - plano complexo
fig, axes = plt.subplots(1, 2, figsize=(14, 6))

# Gráfico no plano complexo
axes[0].plot(z2_vet.real, z2_vet.imag, 'b-', alpha=0.3)
axes[0].scatter(z2_vet.real, z2_vet.imag, c=n2_vet, cmap='viridis', s=100, 
                edgecolors='black', linewidths=1.5)
for i, n in enumerate(n2_vet):
    axes[0].annotate(f'{n}', (z2_vet[i].real, z2_vet[i].imag), 
                     xytext=(5, 5), textcoords='offset points', fontsize=8)
axes[0].axhline(y=0, color='k', linewidth=0.5)
axes[0].axvline(x=0, color='k', linewidth=0.5)
axes[0].set_xlabel('Parte Real')
axes[0].set_ylabel('Parte Imaginária')
axes[0].set_title('z[n] no Plano Complexo')
axes[0].grid(True, alpha=0.3)
axes[0].axis('equal')
cbar = plt.colorbar(axes[0].collections[0], ax=axes[0])
cbar.set_label('n')

# Gráfico da parte imaginária
axes[1].stem(n2_vet, z2_vet.imag, basefmt=' ')
axes[1].set_xlabel('n')
axes[1].set_ylabel('Im{z[n]}')
axes[1].set_title('Parte Imaginária de z[n] = 0.5ⁿ · e^(jn/2)')
axes[1].grid(True, alpha=0.3)

plt.tight_layout()
plt.savefig('exercicio_6_plano_complexo.png', dpi=150, bbox_inches='tight')
plt.show()

print("\n" + "=" * 70)
print("Análise dos sinais gerados:")
print("=" * 70)

print("\n1. Sinal y[n] = n · sen(n/2):")
print("   - Produto de uma rampa (n) com uma senoide")
print("   - A amplitude cresce linearmente com n")
print("   - Sinal real com envelope crescente")
print("   - Aplicação: modulação AM, janelamento de sinais")

print("\n2. Sinal z[n] = 0.5ⁿ · e^(jn/2):")
print("   - Sinal complexo exponencial com decaimento")
print("   - Magnitude: |z[n]| = 0.5ⁿ (decai exponencialmente)")
print("   - Fase: ∠z[n] = n/2 (cresce linearmente)")
print("   - No plano complexo: espiral convergente para a origem")
print("   - Parte real: senoide amortecida")
print("   - Parte imaginária: senoide amortecida (defasada 90°)")
print("   - Aplicação: análise de sistemas LIT, resposta ao impulso")

print("\n" + "=" * 70)
print("Exercício 6 concluído com sucesso!")
print("Gráficos salvos como 'exercicio_6_sinais.png' e 'exercicio_6_plano_complexo.png'")
print("=" * 70)
