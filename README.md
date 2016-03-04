# condition [![wercker status](https://app.wercker.com/status/bbb06a481e37da1ba165ba3afd8de84e/s/master "wercker status")](https://app.wercker.com/project/bykey/bbb06a481e37da1ba165ba3afd8de84e) [![codecov.io](https://codecov.io/github/krlmlr/condition/coverage.svg?branch=master)](https://codecov.io/github/krlmlr/condition?branch=master)

> R doesn’t come with a built-in constructor function for conditions, but we can easily add one.
>
> (Advanced R, by Hadley Wickham)

Actually, there is `simpleCondition()`, `simpleError()` and the like,
but they don't allow specifying an additional class.
The functions in this package allow it:

```
library(condition)
cond <- new_error("Something went wrong", class = "oops")
cond
is.error(cond)
```
