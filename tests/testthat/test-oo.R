context("oo")

test_that("Simple* classes", {
  expect_true(SimpleCondition$is(simpleCondition("cond")))
  expect_true(SimpleError$is(simpleError("err")))
  expect_true(SimpleWarning$is(simpleWarning("warn")))
  expect_true(SimpleMessage$is(simpleMessage("msg")))
})

test_that("Defining new conditions", {
  Oops <- ConditionClass$new("oops", SimpleError)
  expect_true(Oops$is(Oops$new("Something weird happened")))
  expect_false(Oops$is(simpleError("err")))
})
