Version 0.0-3 (2016-03-04)
===

- Improve documentation.


Version 0.0-2 (2016-03-04)
===

- Add vignette.


Version 0.0-1 (2016-03-04)
===

Initial release.

- Functions `new_condition()`, `new_error()`, `new_warning()` and `new_message()` that create condition objects and also allow specifying the class from which these conditions inherit.
- R6 class `ConditionClass` (with objects `Condition`, `Error`, `Warning`, `Message`, and `Simple*` variants) that power the functions above and also allow the creation of new condition classes.  Members: `class_name`, `parent`, `new`, and `is`.
