# Weigelt Production

library(lpSolveAPI)

lprec <- read.lp("dpetwal_3.lp")

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)

# Finding shadow price and reduced cost

get.sensitivity.rhs(lprec)
get.sensitivity.obj(lprec)

# Also - Range of shadow prices and reduced cost 
cbind(get.sensitivity.rhs(lprec)$duals[1:11], get.sensitivity.rhs(lprec)$dualsfrom[1:11], get.sensitivity.rhs(lprec)$dualstill[1:11])
cbind(get.sensitivity.rhs(lprec)$duals[12:20], get.sensitivity.rhs(lprec)$dualsfrom[12:20], get.sensitivity.rhs(lprec)$dualstill[12:20])

# Dual Solution

library(lpSolveAPI)

lprec <- read.lp("dpetwal_3_dual.lp")

# Setting boundaries 

set.bounds(lprec, lower=c(0, 0, 0, 0, 0, 0, 0, 0, 0, -Inf, -Inf), upper = c(Inf, Inf, Inf, Inf, Inf, Inf, Inf, Inf, Inf, Inf, Inf), columns = (1:11))

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)

get.sensitivity.rhs(lprec)

get.sensitivity.obj(lprec)

get.dual.solution(lprec)

# The end