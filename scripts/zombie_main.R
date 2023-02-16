
source('scripts/preamble.R')
renv::restore()
source(paste0(loc.scripts,'library_loader.R'))

# Source functions
source(paste0(loc.func, 'source_all.R'))
source_all(loc.func)



library(deSolve)
