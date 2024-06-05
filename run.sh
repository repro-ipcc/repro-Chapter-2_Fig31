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

