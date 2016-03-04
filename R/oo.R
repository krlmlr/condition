ConditionClass <- R6::R6Class(
  "ConditionClass",
  cloneable = FALSE,

  public = list(
    initialize = function(class_name, parent) {
      self$class_name <- class_name
      self$parent <- parent

      self$new <- eval(bquote(
        function(message, call = NULL, class = NULL) {
          class <- unique(c(class, .(class_name)), fromLast = TRUE)
          self$parent$new(message = message, call = call, class = class)
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
SimpleCondition <- ConditionClass$new("simpleCondition", Condition)
Error <- ConditionClass$new("error", Condition)
SimpleError <- ConditionClass$new("simpleError", Error)
Warning <- ConditionClass$new("warning", Condition)
SimpleWarning <- ConditionClass$new("simpleWarning", Warning)
Message <- ConditionClass$new("message", Condition)
SimpleMessage <- ConditionClass$new("simpleMessage", Message)

# shut up R CMD check
.silence_R6_note <- function() { R6::R6Class }
