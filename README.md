# ipcc-ar6-wg1-figure Chapter 2 Figure 31



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

The figure is left in Chapter-2_Fig31.pdf


# Trend plots of Ocean Color for the IPCC report
Code to generate trend plots of Chl concentrations based on the v4.2 OC-CCI L4 satellite derived Chlorophyll product. Downloading and processing the data require about 70GB of disk space and preferably a machine with 32GB RAM. The code is parallelized and will utilize multicore architectures. 

## Installation
All code is written in python 3.7+ and mainly uses commonly available packages. The plotting functions are based on cartopy which can be a bit difficult to install, it therefore advisable to use the [conda](https://docs.conda.io/en/latest/miniconda.html) package manager:

The parallelized setup is based on a machine with at least 32GB RAM. Change the *islice* attribute in the *process* function to a lower value if memory is an issue. For example:

```
>>> chl_analysis.process(islice=270)
```

