#!/bin/bash

eval "$(conda shell.bash hook)"

conda activate ipcc_ch2f31

# Get the source figure from IPCC
wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_2_31.png

cd Chapter-2_Fig31

python <<EOF
import chl_analysis
chl_analysis.process()
chl_analysis.plot_chl_clim()
chl_analysis.plot_hatched_chl_trend()
EOF

cd figs
mv OC-CCI_Chl_clim_v42_1998-2018_nipy.pdf ../../IPCC_AR6_WGI_Figure_2_31a.pdf
mv OC-CCI_Chl_trend_v42_1998-2018_hatch0o1.pdf ../../IPCC_AR6_WGI_Figure_2_31b.pdf


