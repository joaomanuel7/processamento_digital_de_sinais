"""
Exercício 4 - Operações com Arquivos de Áudio
Processamento Digital de Sinais
"""

import numpy as np
import matplotlib.pyplot as plt
from scipy.io import wavfile
import warnings
warnings.filterwarnings('ignore')

# Função para criar um arquivo de áudio de exemplo caso não exista
def criar_audio_exemplo():
    """Cria um arquivo de áudio de exemplo para testes"""
    fs = 44100  # taxa de amostragem
    duracao = 3  # segundos
    t = np.linspace(0, duracao, int(fs * duracao))
    
    # Gera uma melodia simples com várias frequências
    frequencias = [440, 494, 523, 587, 659, 698, 784, 880]  # escala de Lá
    sinal = np.zeros_like(t)
    
    intervalo = len(t) // len(frequencias)
    for i, freq in enumerate(frequencias):
        inicio = i * intervalo
        fim = (i + 1) * intervalo if i < len(frequencias) - 1 else len(t)
        sinal[inicio:fim] = 0.5 * np.sin(2 * np.pi * freq * t[inicio:fim])
    
    # Normaliza e converte para int16
    sinal = np.int16(sinal * 32767)
    wavfile.write('musica.wav', fs, sinal)
    return sinal, fs

# 4.1 - Leitura do arquivo de áudio
print("4.1 - Leitura e visualização do arquivo de áudio")
print("=" * 60)

try:
    fs, Y = wavfile.read('musica.wav')
    print("Arquivo 'musica.wav' encontrado e carregado.")
except FileNotFoundError:
    print("Arquivo 'musica.wav' não encontrado. Criando arquivo de exemplo...")
    Y, fs = criar_audio_exemplo()
    print("Arquivo de exemplo criado.")

print(f"\nInformações do arquivo:")
print(f"- Taxa de amostragem (FS): {fs} Hz")
print(f"- Número de amostras: {len(Y)}")
print(f"- Duração: {len(Y)/fs:.2f} segundos")
print(f"- Tipo de dados: {Y.dtype}")

# Normaliza o sinal para valores entre -1 e 1
if Y.dtype == np.int16:
    Y_norm = Y / 32768.0
elif Y.dtype == np.int32:
    Y_norm = Y / 2147483648.0
else:
    Y_norm = Y

# Visualização das amostras
plt.figure(figsize=(12, 6))
tempo = np.arange(len(Y)) / fs
plt.plot(tempo, Y_norm)
plt.xlabel('Tempo (s)')
plt.ylabel('Amplitude')
plt.title('Forma de Onda do Sinal de Áudio')
plt.grid(True)
plt.savefig('exercicio_4_1.png')
plt.show()

print("\nFuncionamento das funções:")
print("\n1. wavfile.read() [scipy.io.wavfile]:")
print("   - Lê arquivos no formato WAV")
print("   - Retorna a taxa de amostragem (fs) e os dados do áudio (array numpy)")
print("   - Os dados podem estar em diferentes formatos (int16, int32, float32)")
print("   - Suporta arquivos mono e estéreo")

print("\n2. wavfile.write() [scipy.io.wavfile]:")
print("   - Escreve dados de áudio em formato WAV")
print("   - Parâmetros: nome do arquivo, taxa de amostragem, dados")
print("   - Os dados devem ser um array numpy")
print("   - Detecta automaticamente o formato baseado no tipo de dados")

# 4.2 - Alteração de FS e reprodução
print("\n" + "=" * 60)
print("4.2 - Efeito da alteração da taxa de amostragem")
print("=" * 60)

# Simula diferentes taxas de amostragem
taxas = [fs, fs // 2, fs * 2, fs // 4]

for i, nova_taxa in enumerate(taxas):
    fator = nova_taxa / fs
    print(f"\nTaxa de amostragem: {nova_taxa} Hz (fator: {fator:.2f}x)")
    
    if nova_taxa != fs:
        # Cria novo arquivo com taxa alterada
        nome_arquivo = f'musica_fs_{nova_taxa}.wav'
        wavfile.write(nome_arquivo, nova_taxa, Y)
        print(f"   - Arquivo salvo: {nome_arquivo}")
        
        if fator < 1:
            print(f"   - Som mais GRAVE (pitch diminuído)")
            print(f"   - Duração AUMENTADA para {len(Y)/nova_taxa:.2f}s")
        else:
            print(f"   - Som mais AGUDO (pitch aumentado)")
            print(f"   - Duração REDUZIDA para {len(Y)/nova_taxa:.2f}s")

print("\n" + "=" * 60)
print("Explicação dos efeitos:")
print("=" * 60)
print("\nQuando alteramos a taxa de amostragem (FS):")
print("\n1. FS menor que o original:")
print("   - O áudio é reproduzido mais devagar")
print("   - O pitch (altura do som) fica mais grave")
print("   - A duração aumenta proporcionalmente")
print("   - Exemplo: FS/2 → som 1 oitava abaixo, duração 2x maior")

print("\n2. FS maior que o original:")
print("   - O áudio é reproduzido mais rápido")
print("   - O pitch fica mais agudo")
print("   - A duração diminui proporcionalmente")
print("   - Exemplo: FS*2 → som 1 oitava acima, duração 2x menor")

print("\n3. Profundidade de bits (BITS):")
print("   - Define a resolução da amplitude")
print("   - 8 bits: 256 níveis (qualidade baixa, mais ruído)")
print("   - 16 bits: 65536 níveis (qualidade CD)")
print("   - 24 bits: 16.777.216 níveis (qualidade profissional)")
print("   - Menor profundidade → maior ruído de quantização")

# Visualização comparativa
fig, axes = plt.subplots(2, 2, figsize=(14, 10))
fig.suptitle('Comparação de Diferentes Taxas de Amostragem', fontsize=14)

for idx, (ax, taxa) in enumerate(zip(axes.flatten(), taxas)):
    # Mostra apenas os primeiros 0.05 segundos para visualizar melhor
    n_amostras = int(0.05 * fs)
    t = np.arange(n_amostras) / fs
    
    ax.plot(t, Y_norm[:n_amostras])
    ax.set_xlabel('Tempo (s)')
    ax.set_ylabel('Amplitude')
    ax.set_title(f'FS = {taxa} Hz ({taxa/fs:.2f}x)')
    ax.grid(True)

plt.tight_layout()
plt.savefig('exercicio_4_2_comparacao.png')
plt.show()

print("\nArquivos de áudio e gráficos salvos com sucesso!")
