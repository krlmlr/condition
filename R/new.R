#' Create a condition
#' @export
#' @param class The classes from which the condition should inherit, in addition
#'   to the default classes
#' @inheritParams base::simpleCondition
new_condition <- function(message, call = NULL, class = NULL) {
  class <- unique(c(class, "condition"), fromLast = TRUE)
  structure(list(message = as.character(message), call = call),
            class = class)
}

#' @rdname condition
#' @export
new_error <- function(message, call = NULL, class = NULL) {
  class <- unique(c(class, "error"), fromLast = TRUE)
  new_condition(message = message, call = call, class = class)
}

#' @rdname condition
#' @export
new_warning <- function(message, call = NULL, class = NULL) {
  class <- unique(c(class, "warning"), fromLast = TRUE)
  new_condition(message = message, call = call, class = class)
}

#' @rdname condition
#' @export
new_message <- function(message, call = NULL, class = NULL) {
  class <- unique(c(class, "message"), fromLast = TRUE)
  new_condition(message = message, call = call, class = class)
}
