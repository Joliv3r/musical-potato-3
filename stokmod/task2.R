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


# Finding conditional mean and variance
muC = rep(mu, N) + sigmaAB %*% solve(sigmaB) %*% (val - rep(mu, length(val)))
sigmaC = abs(diag(sigmaA - sigmaAB %*% solve(sigmaB) %*% t(sigmaAB)))

# Defining the fifth percentile and prediction term
z = qnorm(0.95)
pred = z*sqrt( sigmaC )


# Plotting the predictions
plot_2a <- function(){
    plot(tB, val, xlim=c(0.25, 0.5), ylim=c(0.20, 0.70), xlab=expression(theta), ylab=expression(Y(theta)), col=1, pch=19)
    lines(t, muC, col = 2)
    lines(t, muC + pred, lty=2, col=3)
    lines(t, muC - pred, lty=2, col=3)
    legend(
        'bottomright',
        legend=c('Conditional mean', 'Given data points', '90% conditional prediction interval'),
        lty=c(1, NA, 2),
        col=c(2, 1, 3),
        pch=c(NA, 19, NA)
    )
}


# Finding probability below threshhold.
plot_2b <- function(){
    a = 0.30
    prob = pnorm((a - muC)/(sqrt(sigmaC)))

    plot(t, prob, lty=1, xlab='t', ylab='Probability', pch=19)
}
