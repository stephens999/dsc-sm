# produces n random numbers from t with df=2 and  with specified mean
# and outputs random numbers to datafile and the mean used to metafile
# usage is Rscript rnorm.R n mean datafile.RDS metafile.RDS

args = commandArgs(trailingOnly=TRUE)
n=as.numeric(args[1])
mean = as.numeric(args[2])
datafile = args[3]
metafile = args[4]

x=mean+rt(n,df=2)
saveRDS(x,datafile)
saveRDS(mean,metafile)

