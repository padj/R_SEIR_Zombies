dT <- 0.001
times <- seq(0,10,by=dT) # days

initial_state <- c(S=1000, I=1, D=0)

params <- c(alpha <- 0.005, # probability of killing zombie
            beta <- 0.009, # probability of becoming zombie
            zeta <- 0.0001, # probability of resurrection as a zombie
            delta <- 0.00001 # probability of zombie finding food
)
