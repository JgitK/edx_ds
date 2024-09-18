library(tidyverse)
library(gtools)

entrees <- c("entree 1",
             "entree 2",
             "entree 3",
             "entree 4",
             "entree 5",
             "entree 6")
entree_options <- sample(entrees, 1, replace = F)

side1 <- c("side 1",
           "side 2",
           "side 3",
           "side 4",
           "side 5",
           "side 6")
side2 <- c("side 1",
           "side 2",
           "side 3",
           "side 4",
           "side 5")
side_options <- sample(sides, 2, replace = F)

drinks <- c("drink 1",
            "drink 2")
drink_options <- sample(drinks, 1, replace = F)

menu_options <- expand.grid(entrees = entrees, side1 = side1, side2 = side2, drinks = drinks)


6 * nrow(combinations(6,3)) * 3

n <- seq(1, 12)

compute_meals <- function(entrees) {
  combos <- n * 3 * nrow(combinations(6, 2))
  return(combos)
}

optimal_entrees <- sapply(n, compute_meals)
qplot(n, optimal_entrees)
?combinations

n <- seq(2, 12)
compute_meals <- function(entrees) {
  combos <- 6 * 3 * nrow(combinations(n, 2))
  return(combos)
}

optimal_entrees <- sapply(n, compute_meals)
