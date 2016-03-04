# condition

```
> tryCatch(stop(new_error("Something went wrong", class = "oops")), error = identity)
<oops: Something went wrong>
> is.error(.Last.value)
[1] TRUE
```
