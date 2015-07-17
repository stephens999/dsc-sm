# inputs estimate from outfile (an RDS file) and 
# true value from metafile (RDS file)
# outputs mean squared error to scorefile 
# usage is Rscript outfile metafile scorefile

args = commandArgs(trailingOnly=TRUE)
outfile = args[1]
metafile = args[2]
scorefile = args[3]

mean_est=readRDS(outfile)
true_mean = readRDS(metafile)
saveRDS((mean_est-true_mean)^2,scorefile)

