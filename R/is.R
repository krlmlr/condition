#' @include oo.R
NULL

#' Check if the condition is of the appropriate type
#' @param x The object to check
#' @param ... Ignored
#' @export
is.condition <- Condition$is

#' @rdname is.condition
#' @export
is.error <- Error$is

#' @rdname is.condition
#' @export
is.warning <- Warning$is

#' @rdname is.condition
#' @export
is.message <- Message$is
