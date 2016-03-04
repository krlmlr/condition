#' @include oo.R
NULL

#' Create a condition
#'
#' Allows the creation of basic and custom conditions, optionally overriding
#' their class.
#'
#' @export
#' @param class the classes from which the condition should inherit, in addition
#'   to the default classes.
#' @inheritParams base::simpleCondition
#' @examples
#' new_error("Something went wrong", class = "oops")
new_condition <- Condition$new

#' @rdname new_condition
#' @export
new_error <- Error$new

#' @rdname new_condition
#' @export
new_warning <- Warning$new

#' @rdname new_condition
#' @export
new_message <- Message$new
