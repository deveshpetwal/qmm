library(lpSolveAPI)

lprec <- read.lp("dpetwal_4.lp")

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)

