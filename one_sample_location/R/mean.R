# inputs numbers from datafile (an RDS file) and 
# outputs their mean to outfile (RDS file) 
# usage is Rscript datafile outfile 

args = commandArgs(trailingOnly=TRUE)
datafile = args[1]
outfile = args[2]

x=readRDS(datafile)
saveRDS(mean(x),outfile)

