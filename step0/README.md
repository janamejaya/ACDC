# Step 0 -  Generate masked sequences

Given a sequence file, mask regions of low complexity in the sequences. Save the masked sequence in the file masked_seqs.faa

To implement this, set the following fields

a) Path to the segmasker executable: segmasker_path
   Example: segmasker_path = /home/jc/progs/ncbi-blast-2.6.0+-src/c++/ReleaseMT/bin/segmasker

b) Path to the sequence dataset file (FASTA format): seq_file
   Example: seq_file =/ home/jc/work/sequence_sets/seqs.fa

By default, the masked protein sequences are saved in the masked_seqs.faa. Do not change this.
