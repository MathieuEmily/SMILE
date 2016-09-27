# SMILE
The aim of this package is to propose an implementation of the SMILE statistical method. Such a method aims at detecting subpopulation(s) (breed for example) under selection. Based on the haplotype data in a given genomic region, the method computes the d2s dissimilarity and performs a hierarchical clustering to extract the subpopulation under selection.

## Installation
To install and load the package in R

```ruby
library(devtools)
install_github("MathieuEmily/SMILE")
library(SMILE)
```

Function SMILE takes as input a data.frame x, where x has n rows (individuals) and p columns (features such as haplotypes). Cell (i,j) of the input matrix contains the number of occurence of the features j observed in individual j.

## Example:

```ruby
data(GenomicRegion)
```

By typing 
```ruby
SMILE(x=GenomicRegion,plot=TRUE)
```
you can get the graphical display of the clustering and the following responses:
```ruby
$selected
[1] "ShP"

$hc

Call:
hclust(d = as.dist(MatDis), method = "single")

Cluster method   : single 
Number of objects: 30 


$d2s
           BMD        BeT        Bgl        BoC        BoT        BrS        CoS        Dac
BeT 0.58281942                                                                             
Bgl 0.52995976 0.63365377                                                                  
BoC 0.33822047 0.25937500 0.33874194                                                       
BoT 0.53028294 0.38070451
```