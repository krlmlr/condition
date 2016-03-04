# condition [![wercker status](https://app.wercker.com/status/bbb06a481e37da1ba165ba3afd8de84e/s/master "wercker status")](https://app.wercker.com/project/bykey/bbb06a481e37da1ba165ba3afd8de84e) [![codecov.io](https://codecov.io/github/krlmlr/condition/coverage.svg?branch=master)](https://codecov.io/github/krlmlr/condition?branch=master)

```
> tryCatch(stop(new_error("Something went wrong", class = "oops")), error = identity)
<oops: Something went wrong>
> is.error(.Last.value)
[1] TRUE
```
