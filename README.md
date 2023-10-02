# MOON_example

Example script for MOON kinase activity prediction based on TF activity as input. TF activity is defined here as downstream input as only kinases are predicted that have a upstream link in Omnipath with a defined number of steps (here 6).

Input data is the glioblastoma cohort from the CPTAC constortium [a link](https://github.com/PayneLab/cptac). Transcriptomics, proteomics and phosphoproteomics were analysed with MOFA [a link](https://biofam.github.io/MOFA2/) and the transcriptomics weights were used in this MOON analysis.

Full MOON analysis can be found here [a link](https://github.com/saezlab/NCI60_cosmos), further analysis of CPTAC data with MOON can be found here [a link](https://github.com/AnneClaireK/MOON_cptac/tree/master).
