pkg <- list.files(path = ".", pattern = "^test*\\.tar\\.gz")
lapply(pkg, install.packages, repos = NULL, type = "source")