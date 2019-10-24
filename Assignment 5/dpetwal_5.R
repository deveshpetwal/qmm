library(lpSolveAPI)

# Solving for Q1

a <- read.lp("dpetwal_5_1.lp")

solve(a)

get.objective(a)

get.variables(a)

get.constraints(a)

#Solving for Q2 part 1

b <- read.lp("dpetwal_5_2_1.lp")

solve(b)

get.objective(b)

get.variables(b)

get.constraints(b)

#Solving for Q2 part 2

c <- read.lp("dpetwal_5_2_2.lp")

solve(c)

get.objective(c)

get.variables(c)

get.constraints(c)
