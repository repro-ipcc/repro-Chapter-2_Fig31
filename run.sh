#!/bin/bash

eval "$(conda shell.bash hook)"

conda activate ipcc_ch2f31

cd Chapter-2_Fig31

python <<EOF
import chl_analysis
chl_analysis.process()
chl_analysis.plot_chl_clim()
chl_analysis.plot_hatched_chl_trend()
EOF

cd figs
mv OC-CCI_Chl_clim_v42_1998-2018_nipy.pdf ../../Fig_2_31a.pdf
mv OC-CCI_Chl_trend_v42_1998-2018_hatch0o1.pdf ../../Fig_2_31b.pdf


