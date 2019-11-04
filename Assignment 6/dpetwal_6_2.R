library(lpSolveAPI)

lprec <- read.lp("C:/Users/BrandRely/Desktop/dpetwal_6_2.lp")

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)

