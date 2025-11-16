"""
Exercício 5 - Operações com Arquivos de Imagem
Processamento Digital de Sinais
"""

import numpy as np
import matplotlib.pyplot as plt
from matplotlib import cm
from PIL import Image
import warnings
warnings.filterwarnings('ignore')

def criar_imagem_teste():
    """Cria uma imagem de teste 256x256 com gradiente de tons de cinza"""
    img = np.zeros((256, 256), dtype=np.uint8)
    
    # Cria um padrão interessante com círculos e gradientes
    center_x, center_y = 128, 128
    
    for i in range(256):
        for j in range(256):
            # Distância do centro
            dist = np.sqrt((i - center_x)**2 + (j - center_y)**2)
            # Padrão circular com gradiente
            valor = int((dist / 180) * 255) % 256
            img[i, j] = valor
    
    # Adiciona alguns círculos
    for raio in [30, 60, 90]:
        y, x = np.ogrid[:256, :256]
        mascara = (x - center_x)**2 + (y - center_y)**2 <= raio**2
        mascara_borda = ((x - center_x)**2 + (y - center_y)**2 <= raio**2) & \
                       ((x - center_x)**2 + (y - center_y)**2 >= (raio-5)**2)
        img[mascara_borda] = 200
    
    return img

def criar_imagem_teste1():
    """Cria uma imagem de teste1 com padrão 3D"""
    x = np.linspace(-5, 5, 256)
    y = np.linspace(-5, 5, 256)
    X, Y = np.meshgrid(x, y)
    
    # Função 3D interessante
    Z = np.sin(np.sqrt(X**2 + Y**2)) * 100 + 128
    Z = np.clip(Z, 0, 255).astype(np.uint8)
    
    return Z

# 5.1 e 5.2 - Leitura e visualização da imagem
print("5.1 e 5.2 - Leitura e visualização de imagem")
print("=" * 60)

try:
    img = Image.open('teste.bmp')
    Y = np.array(img.convert('L')) / 255.0  # Converte para escala de cinza normalizada
    print("Arquivo 'teste.bmp' encontrado e carregado.")
except FileNotFoundError:
    print("Arquivo 'teste.bmp' não encontrado. Criando imagem de exemplo...")
    img_array = criar_imagem_teste()
    img = Image.fromarray(img_array)
    img.save('teste.bmp')
    Y = img_array / 255.0
    print("Imagem de exemplo criada e salva como 'teste.bmp'.")

print(f"\nInformações da imagem:")
print(f"- Dimensões: {Y.shape}")
print(f"- Tipo de dados: {Y.dtype}")
print(f"- Valores: [{Y.min():.3f}, {Y.max():.3f}]")

# Visualização da imagem original
plt.figure(figsize=(10, 8))
plt.imshow(Y, cmap='gray', vmin=0, vmax=1)
plt.colorbar(label='Intensidade')
plt.title('Imagem Original - teste.bmp')
plt.axis('off')
plt.savefig('exercicio_5_1_original.png', bbox_inches='tight')
plt.show()

# 5.3 - Função de binarização
def binariza(a, b):
    """
    Binariza uma imagem usando um limiar.
    
    Parâmetros:
    -----------
    a : array numpy
        Matriz com a imagem a ser binarizada (valores entre 0 e 1)
    b : float
        Limiar de binarização (intensidade do pixel entre 0 e 1)
    
    Retorna:
    --------
    x : array numpy
        Matriz binarizada (valores 0 ou 1)
    """
    x = np.zeros_like(a)
    
    for i in range(a.shape[0]):
        for j in range(a.shape[1]):
            if a[i, j] >= b:
                x[i, j] = 1
            else:
                x[i, j] = 0
    
    return x

print("\n" + "=" * 60)
print("5.3 - Binarização da imagem")
print("=" * 60)

# Testa a função de binarização com diferentes limiares
limiares = [0.3, 0.5, 0.7]

fig, axes = plt.subplots(1, 4, figsize=(16, 4))
axes[0].imshow(Y, cmap='gray')
axes[0].set_title('Original')
axes[0].axis('off')

for idx, limiar in enumerate(limiares):
    Y_bin = binariza(Y, limiar)
    axes[idx + 1].imshow(Y_bin, cmap='gray')
    axes[idx + 1].set_title(f'Limiar = {limiar}')
    axes[idx + 1].axis('off')
    
    pixels_brancos = np.sum(Y_bin == 1)
    pixels_pretos = np.sum(Y_bin == 0)
    print(f"\nLimiar {limiar}:")
    print(f"  - Pixels brancos: {pixels_brancos} ({100*pixels_brancos/Y_bin.size:.1f}%)")
    print(f"  - Pixels pretos: {pixels_pretos} ({100*pixels_pretos/Y_bin.size:.1f}%)")

plt.tight_layout()
plt.savefig('exercicio_5_3_binarizacao.png', bbox_inches='tight')
plt.show()

# 5.4 - Binarização usando operador lógico
print("\n" + "=" * 60)
print("5.4 - Binarização usando operador lógico")
print("=" * 60)

Y1 = Y > 0.5
plt.figure(figsize=(10, 8))
plt.imshow(Y1, cmap='gray')
plt.title('Imagem Binarizada com Limiar = 0.5 (operador >)')
plt.axis('off')
plt.colorbar(label='Valor binário')
plt.savefig('exercicio_5_4_operador.png', bbox_inches='tight')
plt.show()

print("\nComparação entre os métodos:")
print("1. Função binariza() com loop:")
print("   - Percorre cada pixel individualmente")
print("   - Mais lenta devido aos loops em Python")
print("   - Educacional para entender o processo")

print("\n2. Operador lógico (Y > 0.5):")
print("   - Operação vetorizada do NumPy")
print("   - MUITO mais rápida (otimizada em C)")
print("   - Método preferido na prática")
print("   - Retorna array booleano que pode ser usado como binário")

print("\nAmbos produzem resultados idênticos!")
print(f"Verificação: arrays iguais? {np.array_equal(binariza(Y, 0.5), Y1.astype(float))}")

# 5.5 - Visualização 3D e contornos
print("\n" + "=" * 60)
print("5.5 - Visualização com mesh e contour")
print("=" * 60)

try:
    img1 = Image.open('teste1.bmp')
    Y_teste1 = np.array(img1.convert('L'))
    print("Arquivo 'teste1.bmp' encontrado e carregado.")
except FileNotFoundError:
    print("Arquivo 'teste1.bmp' não encontrado. Criando imagem de exemplo...")
    Y_teste1 = criar_imagem_teste1()
    img1 = Image.fromarray(Y_teste1)
    img1.save('teste1.bmp')
    print("Imagem de exemplo criada e salva como 'teste1.bmp'.")

# Visualização com mesh (superfície 3D)
fig = plt.figure(figsize=(14, 6))

# Subplot 1: Mesh 3D
ax1 = fig.add_subplot(121, projection='3d')
x = np.arange(Y_teste1.shape[1])
y = np.arange(Y_teste1.shape[0])
X, Y_grid = np.meshgrid(x, y)

# Usa subsampling para tornar a visualização mais rápida
passo = 4
surf = ax1.plot_surface(X[::passo, ::passo], Y_grid[::passo, ::passo], 
                        Y_teste1[::passo, ::passo], cmap=cm.viridis,
                        linewidth=0, antialiased=True)
ax1.set_xlabel('X')
ax1.set_ylabel('Y')
ax1.set_zlabel('Intensidade')
ax1.set_title('Visualização 3D - mesh()')
fig.colorbar(surf, ax=ax1, shrink=0.5)

# Subplot 2: Contornos
ax2 = fig.add_subplot(122)
contornos = ax2.contour(X, Y_grid, Y_teste1, levels=15, cmap='viridis')
ax2.clabel(contornos, inline=True, fontsize=8)
ax2.set_xlabel('X')
ax2.set_ylabel('Y')
ax2.set_title('Mapa de Contornos - contour()')
plt.colorbar(contornos, ax=ax2, label='Intensidade')

plt.tight_layout()
plt.savefig('exercicio_5_5_mesh_contour.png', bbox_inches='tight', dpi=100)
plt.show()

print("\nAnálise dos resultados:")
print("\n1. mesh() - Visualização 3D:")
print("   - Representa a imagem como uma superfície tridimensional")
print("   - Altura (eixo Z) corresponde à intensidade do pixel")
print("   - Permite visualizar variações de intensidade como relevo")
print("   - Útil para identificar gradientes e padrões espaciais")
print("   - Cores indicam diferentes níveis de intensidade")

print("\n2. contour() - Mapa de contornos:")
print("   - Mostra linhas de nível (isocurvas) de intensidade constante")
print("   - Similar a mapas topográficos")
print("   - Cada linha conecta pixels com mesma intensidade")
print("   - Facilita identificação de regiões homogêneas")
print("   - Números nas linhas indicam o valor de intensidade")

print("\nAplicações práticas:")
print("- Análise de texturas em imagens")
print("- Detecção de bordas e características")
print("- Processamento de imagens médicas")
print("- Análise de padrões de iluminação")
print("- Segmentação de imagens")

print("\n" + "=" * 60)
print("Exercício 5 concluído! Todas as imagens foram salvas.")
print("=" * 60)
