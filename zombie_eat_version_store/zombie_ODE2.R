zombie_ODE2 <- function(t, y, parms){
  
  with(as.list(c(y,parms)),{
    
    N <- S + I + D
    dS <- -beta*S*I
    dI <- beta*S*I + zeta*D - alpha*S*I - delta*N^2*I/S
    dD <- alpha*S*I - zeta*D + delta*N^2*I/S
    
    return(list(c(dS,dI,dD)))
    }
  )
  
  
  
}