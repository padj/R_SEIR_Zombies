
source('scripts/preamble.R')
renv::restore()
source(paste0(loc.scripts,'library_loader.R'))

# Source functions
source(paste0(loc.func, 'source_all.R'))
source_all(loc.func)

# Run basic model
output <- as.data.frame(ode(y = initial_state,
                            times = times,
                            func = zombie_ODE,
                            parms = params))

output$N <- rowSums(output) - output$time


# Plot results
ggplot(data = output) +
  geom_line(aes(x=time, y=S, colour = 'S')) +
  geom_line(aes(x=time, y=I, colour = 'I')) + 
  geom_line(aes(x=time, y=D, colour = 'D')) + 
  labs(x='Time (days)', y = 'Occupany')


#Run model where zombies need to eat
output <- as.data.frame(ode(y = initial_state,
                            times = times,
                            func = zombie_ODE2,
                            parms = params))

output$N <- rowSums(output) - output$time

# Plot results
ggplot(data = output) +
  geom_line(aes(x=time, y=S, colour = 'S')) +
  geom_line(aes(x=time, y=I, colour = 'I')) + 
  geom_line(aes(x=time, y=D, colour = 'D')) + 
  labs(x='Time (days)', y = 'Occupany')
