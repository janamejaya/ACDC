# Set the name of the sequence file
seq_file=/home/jc/work/sequence_sets/seqs.fa

# Set the path to the segmask
segmasker_path=/home/jc/progs/ncbi-blast-2.6.0+-src/c++/ReleaseMT/bin/segmasker

# Set the name of the output file
output_file=masked_seqs.faa

# To mask low complexity regions, set mask_seq=1 (default setting)
mask_seq=1

if [ $mask_seq -eq 1 ];
then
   echo "masking sequences in sequence dataset"
   $segmasker_path -in $seq_file -infmt fasta -parse_seqids -outfmt fasta -out $output_file
else
   echo "no masking performed"

   # If masked sequence already exists, delete it
   if [ -f $output_file ]
   then
        echo "Masked sequence file exists. Removing"
        rm $output_file
   fi

   # Create soft link to sequence file
   ln -s $seq_file $output_file
fi
