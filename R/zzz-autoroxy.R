# nolint start
{
    if (!"DESCRIPTION" %in% dir()) {
        return(invisible(NULL))
    }
    if (file.exists("man")) {
        return(invisible(NULL))
    }
    if (grepl("/.*[.]Rcheck/00_pkg_src/.*$", normalizePath(getwd(),
        winslash = "/"))) {
        stop("Cannot run this function in R CMD check.")
    }
    message("*** autoroxy: creating documentation")
    if (!requireNamespace("roxygen2")) {
        warning("Cannot load roxygen2. Package documentation will be unavailable.",
            call. = FALSE)
        return(invisible(NULL))
    }
    roxygen2::roxygenize(roclets = c("rd"))
}
# nolint end
