pkg <- list.files(path = ".", pattern = "^test.+\\.tar\\.gz$")
stopifnot(length(pkg) > 0)
lapply(pkg, install.packages, repos = NULL, type = "source")