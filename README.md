# TimeWarp
# Language: RWRMH
# Input: TXT (parameters)
# Output: CSV (nodes and scores)
# Tested with: PluMA 1.0, R 3.5

PluMA plugin that runs the Random Walk with Restart
on Multiplex and Heterogeneous biological networks (RWR-MH, 
Valdeolivas et al, 2018).

With the help of a "seed", this algorithm performs
this walk to find associated entities (i.e. genes, proteins)
with this seed.

The plugin takes as input a TXT file of keyword-value pairs.
The "inputfile" keyword provides the input network (CSV format).
The "seedgene" provides the name of the seed, which should be
in the input network someplace.

The plugin outputs in CSV format a list of each node
and its association level with the seed.

The plugin follows the format of the basic test with the R package
available at Bioconductor, and the "PPI.csv" example test
was generated from PPI_Network in the R data library.
