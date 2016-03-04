#' Create custom conditions
#'
#' R has a condition system, but misses basic functions for
#' creating condition objects and checking inheritance. (No,
#' \code{structure()} and \code{inherits()} don't count.) The functions and
#' classes in this package allow the simple creation of custom
#' condition objects and even the definition of own condition
#' class hierarchies.
#'
#' See for example \code{\link{new_error}}, or the corresponding R6 class
#' \code{\link{Error}}.
#'
#' @author Kirill Müller
#' @name condition
#' @docType package
#' @rdname condition-package
NULL
