#' Visualize binomial distribution
#'
#' Visualize how changes in number of trials and the probability of
#' success affect the shape of the binomial distribution. Compute & visualize
#' probability from a given quantile and quantiles out of given probability.
#'
#' @param n Number of trials.
#' @param p Aggregate probability.
#' @param s Number of success.
#' @param tp Probability of success in a trial.
#' @param type Lower/upper/exact/interval.
#'
#' @return A list containing the following components:
#'
#' \item{avg}{Mean of the binomial distribution,}
#' \item{stdev}{Standard deviation of the binomial distribution.}
#' \item{prob}{Probability of success.}
#'
#' @examples
#' # visualize binomial distribution
#' dist_binom_plot(10, 0.3)
#'
#' # visualize probability from a given quantile
#' dist_binom_prob(10, 0.3, 4, type = 'exact')
#' dist_binom_prob(10, 0.3, 4, type = 'lower')
#' dist_binom_prob(10, 0.3, 4, type = 'upper')
#' dist_binom_prob(10, 0.3, c(4, 6), type = 'interval')
#'
#' # visualize quantiles out of given probability
#' dist_binom_perc(10, 0.5, 0.05)
#' dist_binom_perc(10, 0.5, 0.05, "upper")
#'
#' @seealso \code{\link[stats]{Binomial}}
#'
#' @export  
#'
dist_binom_plot <- function(n, p) {
  print(vistributions::vdist_binom_plot(n, p))
  rlang::warn('`dist_binom_plot()` has been soft deprecated and will be removed in the next version of descriptr. Please use the vistributions package for visualizing probability distributions.')
}

#' @rdname dist_binom_plot
#' @export
#'
dist_binom_prob <- function(n, p, s,
                            type = c("lower", "upper", "exact", "interval")) {
  print(vistributions::vdist_binom_prob(n, p, s, type))
  rlang::warn('`dist_binom_prob()` has been soft deprecated and will be removed in the next version of descriptr. Please use the vistributions package for visualizing probability distributions.')
}

#' @rdname dist_binom_plot
#' @export
#'
dist_binom_perc <- function(n, p, tp, type = c("lower", "upper")) {
  print(vistributions::vdist_binom_perc(n, p, tp, type))
  rlang::warn('`dist_binom_perc()` has been soft deprecated and will be removed in the next version of descriptr. Please use the vistributions package for visualizing probability distributions.')
}
