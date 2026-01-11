# CoRE4INET Workspace

OMNeT++ tabanlı Time-Triggered Ethernet (TTE) ve AVB simülasyon projesi.

## 📋 Gereksinimler

- Linux (Ubuntu 20.04+ önerilir) veya WSL2
- GCC 9+
- Python 3.x
- Qt5 (GUI için)

## 🚀 Kurulum

### 1. OMNeT++ 5.7.1 Kurulumu

```bash
# OMNeT++ 5.7.1'i indir
git clone --branch omnetpp-5.7.1 https://github.com/omnetpp/omnetpp.git omnetpp-5.7.1

# Dizine gir
cd omnetpp-5.7.1

# Ortam değişkenlerini ayarla
source setenv

# Yapılandır ve derle
./configure
make -j$(nproc)
```

### 2. INET Framework Kurulumu

```bash
# INET 4.2.5'i indir (OMNeT++ 5.7.x ile uyumlu)
git clone --branch v4.2.5 https://github.com/inet-framework/inet.git

# Dizine gir
cd inet

# Alt modülleri indir
git submodule update --init --recursive

# Derle
make makefiles
make -j$(nproc)
```

### 3. CoRE4INET Kurulumu (Opsiyonel)

```bash
# CoRE4INET'i indir
git clone https://github.com/CoRE-RG/CoRE4INET.git

# Dizine gir
cd CoRE4INET

# Derle
make makefiles
make -j$(nproc)
```

## 🔧 Projeyi Derleme

```bash
# Proje dizinine gir
cd core4inet-workspace

# Ortam değişkenlerini ayarla (OMNeT++ kurulum dizininde)
source /path/to/omnetpp-5.7.1/setenv

# Derle
make
```

## ▶️ Simülasyonları Çalıştırma

### Car Network
```bash
cd simulations/car_network
./run
# veya
opp_run -m -n .:../../src -l ../../src/core4inet-workspace omnetpp.ini
```

### Large Car Network
```bash
cd simulations/large_car_network
./run
```

### Industrial Network
```bash
cd simulations/industrial_network
./run
```

## 📁 Proje Yapısı

```
core4inet-workspace/
├── src/                          # Kaynak kodlar
├── simulations/
│   ├── car_network/              # Araç ağı simülasyonu
│   ├── large_car_network/        # Büyük araç ağı simülasyonu
│   └── industrial_network/       # Endüstriyel ağ simülasyonu
├── out/                          # Derleme çıktıları
├── Makefile
└── README.md
```

## 📚 Simülasyon Açıklamaları

| Simülasyon | Açıklama |
|------------|----------|
| **car_network** | Temel araç içi ağ simülasyonu (Kamera, Telematics, HU, CD/DVD vb.) |
| **large_car_network** | Gelişmiş araç ağı (Lidar, Radar, VCC, Audio, Video vb.) |
| **industrial_network** | Endüstriyel Ethernet ağ simülasyonu |

## 🔗 Faydalı Linkler

- [OMNeT++ Resmi Site](https://omnetpp.org/)
- [INET Framework](https://inet.omnetpp.org/)
- [CoRE4INET GitHub](https://github.com/CoRE-RG/CoRE4INET)
- [OMNeT++ Dokümantasyon](https://doc.omnetpp.org/)

## 📝 Lisans

Bu proje akademik ve araştırma amaçlı kullanım içindir.
