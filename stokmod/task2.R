# ------ Task 2a) -------

# Starting variables
N <- 51
mu <- 0.5
sigma <- 0.5^2
phi <- 15

# Correlation
corr <- function(t1, t2) {
    (1 + phi*abs(t1-t2)) * exp(-phi*abs(t1-t2))
}

# Setting the grid
t <- seq(0.25, 0.5, length.out = N)

# Data points with time and value
tB <- c(0.30, 0.35, 0.39, 0.41, 0.45)
val <- c(0.50, 0.32, 0.40, 0.35, 0.60)


# Building distance matrices
HA <- abs(matrix(t, N, N) - matrix(t, N, N, TRUE))
HB <- abs(matrix(tB, length(tB), length(tB)) - matrix(tB, length(tB), length(tB), TRUE))
HAB <- abs( matrix(t, N, length(tB)) - matrix(tB, N, length(tB), TRUE) )

# Building covariance matrices
sigmaA = sigma*(1+phi*HA) * exp(-phi*HA)
sigmaB = sigma*(1+phi*HB) * exp(-phi*HB)
sigmaAB = sigma*(1+phi*HAB) * exp(-phi*HAB)


# Finding conditional mean
muC = rep(mu, N) + sigmaAB %*% solve(sigmaB) %*% (val - rep(mu, length(val)))

plot(t, muC)
