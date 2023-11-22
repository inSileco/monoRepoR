# monoRepoR
[![R-CMD-check-all](https://github.com/inSileco/monoRepoR/actions/workflows/R-CMD-check-all.yaml/badge.svg)](https://github.com/inSileco/monoRepoR/actions/workflows/R-CMD-check-all.yaml)
[![build-and-release](https://github.com/inSileco/monoRepoR/actions/workflows/build-docker-container.yaml/badge.svg)](https://github.com/inSileco/monoRepoR/actions/workflows/build-docker-container.yaml)

Demo repo to apply the same workflows on several R packages in a monorepo.


## Generating test packages

```R
# create testpkg01
## NB: the command line below prompts a message that requires an answer
usethis::create_package("testpkg01")
usethis::use_mit_license()
devtools::load_all()
devtools::document()
devtools::check()
# back to root
setwd("..")
# create testpkg02
usethis::create_package("testpkg02")
usethis::use_mit_license()
devtools::load_all()
devtools::document()
devtools::check()
```

## Docker 

Docker image available at the following URL https://hub.docker.com/repository/docker/kevcaz/monorepor/general

```
docker push kevcaz/monorepor:v0.1.2
```
