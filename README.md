# CoRE4INET Workspace

OMNeT++ based Time-Triggered Ethernet (TTE) and AVB simulation project.

## Requirements

- Linux (Ubuntu 20.04+ recommended) or WSL2
- GCC 9+
- Python 3.x
- Qt5 (for GUI)

## Installation

### 1. OMNeT++ 5.7.1 Installation

```bash
# Download OMNeT++ 5.7.1
git clone --branch omnetpp-5.7.1 https://github.com/omnetpp/omnetpp.git omnetpp-5.7.1

# Enter directory
cd omnetpp-5.7.1

# Set environment variables
source setenv

# Configure and build
./configure
make -j$(nproc)
```

### 2. INET Framework Installation

```bash
# Download INET 4.2.5 (compatible with OMNeT++ 5.7.x)
git clone --branch v4.2.5 https://github.com/inet-framework/inet.git

# Enter directory
cd inet

# Download submodules
git submodule update --init --recursive

# Build
make makefiles
make -j$(nproc)
```

### 3. CoRE4INET Installation (Optional)

```bash
# Download CoRE4INET
git clone https://github.com/CoRE-RG/CoRE4INET.git

# Enter directory
cd CoRE4INET

# Build
make makefiles
make -j$(nproc)
```

## Building the Project

```bash
# Enter project directory
cd core4inet-workspace

# Set environment variables (in OMNeT++ installation directory)
source /path/to/omnetpp-5.7.1/setenv

# Build
make
```

## Running Simulations

### Car Network
```bash
cd simulations/car_network
./run
# or
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

## Project Structure

```
core4inet-workspace/
├── src/                          # Source code
├── simulations/
│   ├── car_network/              # In-vehicle network simulation
│   ├── large_car_network/        # Large in-vehicle network simulation
│   └── industrial_network/       # Industrial network simulation
├── out/                          # Build outputs
├── Makefile
└── README.md
```

## Simulation Descriptions

### car_network

Basic in-vehicle network simulation (Camera, Telematics, HU, CD/DVD, etc.)

**References:** The topology and flow details are described in the following publications:
- [1] G. Patti, L. Lo Bello, "Performance assessment of the IEEE 802.1Q in automotive applications", AEIT Automotive, 2019.
- [2] L. Leonardi, L. Lo Bello, G. Patti, "Performance assessment of the IEEE 802.1Qch in an automotive scenario", AEIT Automotive, 2020.
- [3] L. Lo Bello, M. Ashjaei, G. Patti, M. Behnam, "Schedulability analysis of Time-Sensitive Networks with scheduled traffic and preemption support", IEEE Access, 2021.
- [4] M. Topsakal, S. Cevher, D. Ergenç, "A Machine Learning-Based Intrusion Detection Framework with Labeled Dataset Generation for IEEE 802.1 Time-Sensitive Networking", Journal of Systems Architecture, Vol. 164, 2025.
- [5] S. Cevher, M. Topsakal, Ö. K. Demir, "Delay Analysis of IEEE 802.1BA Audio Video Bridging Networks: Recent Advances and Evaluation of Realistic Industrial Communication Use Cases", IJERAD, Vol. 17, Issue 2, pp. 383-402, 2025.
- [6] M. Topsakal, S. Cevher, "Cyber Security for IEEE 802.1 Time Sensitive In-Vehicle Networking: Recent Advances and Impact Analysis of DoS Attacks", Dokuz Eylül Üniversitesi Mühendislik Fakültesi Fen ve Mühendislik Dergisi, 2024.

### large_car_network

Advanced in-vehicle network simulation (Lidar, Radar, VCC, Audio, Video, etc.)

**References:** The topology and flow details are described in the following publications:
- [1] F. Luo, B. Wang, Z. Yang, P. Zhang, Y. Ma, Z. Fang, M. Wu, Z. Sun, "Design Methodology of Automotive Time-Sensitive Network System Based on OMNeT++ Simulation System", IEEE Access, 2019.
- [2] M. Topsakal, S. Cevher, "Cyber Security for IEEE 802.1 Time Sensitive In-Vehicle Networking: Recent Advances and Impact Analysis of DoS Attacks", Dokuz Eylül Üniversitesi Mühendislik Fakültesi Fen ve Mühendislik Dergisi, 2024.

### industrial_network

Industrial Ethernet network simulation.

**References:** The topology and flow details are described in the following publications:
- [1] M. Ashjaei, G. Patti, M. Behnam, T. Nolte, G. Alderisi, L. Lo Bello, "Schedulability analysis of Ethernet Audio Video Bridging networks with scheduled traffic support", Real-Time Systems, 2017.
- [2] S. Cevher, M. Topsakal, Ö. K. Demir, "Delay Analysis of IEEE 802.1BA Audio Video Bridging Networks: Recent Advances and Evaluation of Realistic Industrial Communication Use Cases", IJERAD, Vol. 17, Issue 2, pp. 383-402, 2025.

## Useful Links

- [OMNeT++ Official Site](https://omnetpp.org/)
- [INET Framework](https://inet.omnetpp.org/)
- [CoRE4INET GitHub](https://github.com/CoRE-RG/CoRE4INET)
- [OMNeT++ Documentation](https://doc.omnetpp.org/)

## License

This project is intended for academic and research purposes.
