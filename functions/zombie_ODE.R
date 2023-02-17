zombie_ODE <- function(t, y, parms){
  
  with(as.list(c(y,parms)),{
    
    N <- S + I + D
    dS <- -beta*S*I
    dI <- beta*S*I + zeta*D - alpha*S*I
    dD <- alpha*S*I - zeta*D
    
    return(list(c(dS,dI,dD)))
    }
  )
  
  
  
}