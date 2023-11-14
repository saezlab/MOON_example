# MOON_example

Example script for MOON kinase activity prediction based on TF activity as input. TF activity is defined here as downstream input as only kinases are predicted that have a upstream link in Omnipath with a defined number of steps (here 6). A solution network can then be generated to connect the TF activties with kinase activties calculated with phosphoproteomic data.

Input data is the glioblastoma cohort from the [CPTAC consortium data](https://github.com/PayneLab/cptac). Transcriptomics, proteomics and phosphoproteomics were analysed with [MOFA](https://biofam.github.io/MOFA2/) and the transcriptomics weights were used in this MOON analysis.

Full MOON analysis with metobolimcs and TF activity data of the NCI60 data can be found [here](https://github.com/saezlab/NCI60_cosmos), further analysis of CPTAC data with MOON can be found [here](https://github.com/AnneClaireK/MOON_cptac/tree/master).

Please cite: https://www.embopress.org/doi/full/10.15252/msb.20209730
