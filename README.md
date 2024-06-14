# ipcc-ar6-wg1-figure Chapter 2 Figure 31


| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Full](https://img.shields.io/badge/2/3-Full-green) <br> ![Partial](https://img.shields.io/badge/0/3-Partial-orange) <br> ![Missing](https://img.shields.io/badge/1/3-Missing-red) | ![Same](https://img.shields.io/badge/2/2-Same-green) <br> ![Similar](https://img.shields.io/badge/0/2-Similar-orange) <br> ![Different](https://img.shields.io/badge/0/2-Different-red) | ![Auto](https://img.shields.io/badge/Auto-orange) ![Manual](https://img.shields.io/badge/Manual-orange) |


Project to re-create the IPCC AR6 WG1 figures. See https://ipcc.ch and https://github.com/IPCC-WG1

The instructions are meant to run a recent ubuntu Linux system.

Download the Anaconda Miniforge installer from:
https://conda-forge.org/miniforge/

Install Miniforge:
sh Miniforge3*.sh

Disconnect from your shell and reconnect to install the new commands.

Clone this repository and connect to it.

Install the submodules:
```sh
git submodule init
git submodule update
```

Install the conda environment:

```sh
bash install.sh
```

To re-create the figure of Chapter 2 Figure 31:

```sh
bash run.sh
```

The figure is left in IPCC_AR6_WGI_Figure_2_31a.pdf and IPCC_AR6_WGI_Figure_2_31b.pdf


# Trend plots of Ocean Color for the IPCC report
Code to generate trend plots of Chl concentrations based on the v4.2 OC-CCI L4 satellite derived Chlorophyll product. Downloading and processing the data require about 70GB of disk space and preferably a machine with 32GB RAM. The code is parallelized and will utilize multicore architectures. 

## Installation
All code is written in python 3.7+ and mainly uses commonly available packages. The plotting functions are based on cartopy which can be a bit difficult to install, it therefore advisable to use the [conda](https://docs.conda.io/en/latest/miniconda.html) package manager:

The parallelized setup is based on a machine with at least 32GB RAM. Change the *islice* attribute in the *process* function to a lower value if memory is an issue. For example:

```
>>> chl_analysis.process(islice=270)
```

## Issue

### 2024-06-10
Figure (a)(b) seems same. But lacks figure (c) now.

