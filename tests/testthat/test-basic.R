context("basic")

test_that("Construction and type checking", {
  cond <- new_condition("cond")
  expect_identical(cond$message, "cond")
  expect_is(cond, "condition")

  err <- new_error("err")
  expect_is(err, "condition")
  expect_is(err, "error")
  expect_false(is.warning(err))
  expect_false(is.message(err))

  warn <- new_warning("warn")
  expect_is(warn, "condition")
  expect_is(warn, "warning")
  expect_false(is.error(warn))
  expect_false(is.message(warn))

  msg <- new_message("msg")
  expect_is(msg, "condition")
  expect_is(msg, "message")
  expect_false(is.error(msg))
  expect_false(is.warning(msg))

  oops <- new_error("oops", class = "oops")
  expect_is(oops, "oops")
  expect_is(oops, "error")
  expect_is(oops, "condition")
})
