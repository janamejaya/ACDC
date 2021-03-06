# ACDC (Attribute Clustering Dependent Communities)

ACDC is an unsupervised method for identification of communities in networks. It was originally formulated as an unsupervised method for classification of protein sequences. For details of the method, please refer to the open access manuscript [Community detection in sequence similarity networks based on attribute clustering](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0178650).  The key components of ACDC are feature selection, cluster analysis, outlier detection, and community detection followed by community structure refinement. This repository contains a python implementation of ACDC.

Required Libraries and software
1. SSEARCH from the [FASTA suite](https://github.com/wrpearson/fasta36) (for calculating sequence similarities)
2. Segmasker from the [NCBI Blast](https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=Download) suite
3. Python 3.6+
4. pandas (for data handling)
5. scikit-learn (for clustering)
6. networkx (for network analysis)
7. joblib (for parallel processing)
8. Jupyter notebook (for interactive computation)

The entire workflow in ACDC can be split into the following steps
1. step0 - First mask low complexity regions of each protein sequence in dataset with "segmasker" in the NCBI Blast suite.
           
2. step1 - Generate scripts for generating pair alignments of each sequence with every sequence in the dataset. Run these scripts to generate the actual pair alignments.

3. step2 - Prune and transform alignment features generated in step 1 so the data is ready to be used for sequence classification via community detection.
