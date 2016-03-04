ConditionClass <- R6::R6Class(
  "ConditionClass",
  cloneable = FALSE,

  public = list(
    initialize = function(class_name, parent) {
      self$class_name <- class_name
      self$parent <- parent

      self$new <- eval(bquote(
        function(message, call = NULL, class = NULL) {
          x <- self$parent$new(message = message, call = call, class = class)
          class(x) <- unique(c(class, .(class_name), class(x)), fromLast = TRUE)
          x
        }
      ))

      self$as <- function(x, ...) {
        self$new(message = x$message, call = x$call, class = NULL)
      }

      self$is <- eval(bquote(
        function(x, ...) {
          self$parent$is(x) && inherits(x, .(class_name))
        }
      ))
    },

    # Slots for functions that are created in initialize()
    new = NULL,
    as = NULL,
    is = NULL,

    class_name = NULL,
    parent = NULL
  )
)

ConditionClassBase <- R6::R6Class(
  "ConditionClassBase",
  inherit = ConditionClass,
  cloneable = FALSE,

  public = list(
    initialize = function() {
      self$class_name <- "condition"

      self$new <- function(message, call = NULL, class = NULL) {
        class <- unique(c(class, "condition"), fromLast = TRUE)
        structure(list(message = as.character(message), call = call),
                  class = class)
      }

      self$is <- function(x, ...) {
        inherits(x, "condition")
      }
    }
  )
)

Condition <- ConditionClassBase$new()
Error <- ConditionClass$new("error", Condition)
Warning <- ConditionClass$new("warning", Condition)
Message <- ConditionClass$new("message", Condition)
