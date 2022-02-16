
# heron's formula ---------------------------------------------------------

heron <- function(a, b, c) {
  # define the are
  s <- (a + b + c)/2
  S <- (s*(s - a)*(s - b)*(s - c))^(1/2)
  
  x <- c(a, b, c)
  x_order <- x[order(x)]
  
  if (x_order[3] < (x_order[1] + x_order[2])) {
    # show
    cat("The area is: \n", S)
  } else {
    cat("It is not a valid triangle.")
  }
}

# test
heron(2, 2, 2)
heron(1, 2, 5)


# For文 --------------------------------------------------------------------

# Q1
power_two <- function(n) {
  x <- c()
  for(i in 1:n) {
    y <- i^2
    x <- c(x, y)
  }
  cat(x)
}

# test
power_two(5)



# collatzlist -------------------------------------------------------------

# 1
collatzlist <- function(n, s) {
  x <- n
    for (i in 1:s) {
      if(n %% 2 == 0) {
        n <- n/2
      } else {
        n <- 3*n + 1
      }
      x <- c(x, n)
    }
  print(x)
}

# test
collatzlist(3, 10)



# 2 

collatz2 <- function(n) {
  if(n %% 2 == 0) {
    x <- n/2
  } else {
    x <- 3*n + 1
  }
}

collatzlist2 <- function(n, s) {
  x <- n
    for(i in 1:s) {
      n <- collatz2(n)
      x <- c(x, n)
    }
  return(x)
}

collatzlist3 <- function(n) {
  x <- n;
    while (n > 1) {
      n <- collatx2(n)
      
      x <- c(x, n)
    }
  return(x)
}

# Q3
collatzlist4 <- collatzlist3(100)

graph <- data.frame(
  num <- c(1:length(collatzlist4)),
  value <- collatzlist4
)

# plot
plot(graph, type = "l")



