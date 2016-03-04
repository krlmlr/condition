#' @include oo.R
NULL

#' Create a condition
#' @export
#' @param class The classes from which the condition should inherit, in addition
#'   to the default classes
#' @inheritParams base::simpleCondition
new_condition <- Condition$new

#' @rdname condition
#' @export
new_error <- Error$new

#' @rdname condition
#' @export
new_warning <- Warning$new

#' @rdname condition
#' @export
new_message <- Message$new
