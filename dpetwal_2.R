library(lpSolveAPI)

# Making lp object with 0 constraints and 9 decision variables:
lprec <- make.lp(0, 9)

# Creating objective function 
set.objfn(lprec, c(420, 420, 420, 360, 360, 360, 300, 300, 300))

# As by default it is minimization we will make it max:
lp.control(lprec,sense='max')

# Adding other constraints such as plant and capacity:
add.constraint(lprec, c(1, 0, 0, 1, 0, 0, 1, 0, 0), "<=", 750)
add.constraint(lprec, c(0, 1, 0, 0, 1, 0, 0, 1, 0), "<=", 900)
add.constraint(lprec, c(0, 0, 1, 0, 0, 1, 0, 0, 1), "<=", 450)
add.constraint(lprec, c(20, 0, 0, 15, 0, 0, 12, 0, 0), "<=", 13000)
add.constraint(lprec, c(0, 20, 0, 0, 15, 0, 0, 12, 0), "<=", 12000)
add.constraint(lprec, c(0, 0, 20, 0, 0, 15, 0, 0, 12), "<=", 5000)
add.constraint(lprec, c(1, 1, 1, 0, 0, 0, 0, 0, 0), "<=", 900)
add.constraint(lprec, c(0, 0, 0, 1, 1, 1, 0, 0, 0), "<=", 1200)
add.constraint(lprec, c(0, 0, 0, 0, 0, 0, 1, 1, 1), "<=", 750)

# Lets give the names to identify easily: 
ColNames <- c("Large - P1", "Large - P2", "Large - P3", "Medium - P1", "Medium - P2", "Medium - P3", "Small - P1", "Small - P2", "Small - P3")
RowNames <- c("P1 capacity", "P2 capacity", "P3 capacity", "P1 sq ft", "P2 sq ft", "P3 sq ft", "Large Forecast", "Medium Forecast", "Small Forecast")
dimnames(lprec) <- list(RowNames, ColNames)

# Solving for maximization:
solve(lprec)

# Printing results
get.objective(lprec)
get.variables(lprec)
get.constraints(lprec)
