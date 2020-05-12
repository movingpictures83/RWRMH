library("igraph")
library("RandomWalkRestartMH")

input <- function(inputfile) {
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
  myFrame <- read.csv(toString(parameters["inputfile", 2]))
  myFrame <- myFrame[,-1]
  myNetwork <<- graph_from_data_frame(myFrame)
}

run <- function() {
   myMultiplex <- create.multiplex(myNetwork, Layers_Name=c("Multiplex"))
   myADJ <- compute.adjacency.matrix(myMultiplex)
   myADJNorm <- normalize.multiplex.adjacency(myADJ)
   myResults <<- Random.Walk.Restart.Multiplex(myADJNorm, myMultiplex, c(toString(parameters["seed", 2])))
}

output <- function(outputfile) {
   write.csv(myResults$RWRM_Results, outputfile)
}

