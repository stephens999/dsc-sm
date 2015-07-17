# usage is Rscript hello_world.R outputfilename

args <- commandArgs(trailingOnly = TRUE)
sink(args[1])
print("hello world")
