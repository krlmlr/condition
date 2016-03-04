#' Check if the condition is of the appropriate type
#' @param x The object to check
#' @param ... Ignored
#' @export
is.condition <- function(x, ...) inherits(x, "condition")

#' @rdname is.condition
#' @export
is.error <- function(x, ...) is.condition(x) && inherits(x, "error")

#' @rdname is.condition
#' @export
is.warning <- function(x, ...) is.condition(x) && inherits(x, "warning")

#' @rdname is.condition
#' @export
is.message <- function(x, ...) is.condition(x) && inherits(x, "message")
