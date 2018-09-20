# ACDC (Attribute Clustering Dependent Communities)

ACDC is an unsupervised method for identification of communities in networks. It was originally formulated as an unsupervised method for classification of protein sequences. For details of the method, please refer to the open access manuscript [Community detection in sequence similarity networks based on attribute clustering](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0178650). This repo contains a python implementation of ACDC. The key components of ACDC are cluster analysis, outlier detection, and community detection followed by refinement.

Required Libraries and software
1. SSEARCH from the [FASTA suite](https://github.com/wrpearson/fasta36) (for calculating sequence similarities)
2. Python 3.6+
3. pandas (for data handling)
4. scikit-learn (for clustering)
5. networkx (for network analysis)

