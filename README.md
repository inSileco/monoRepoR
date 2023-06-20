# monoRepoR
Test repo to apply the same worklows on several packages in a mono repo.


## Generating test packages

```R
# create testpkg01
usethis::create_package("testpkg01") # NB: this prompts a message that requires an answer
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

## Adding the workflows 

1. [reusable workflow](https://docs.github.com/en/actions/using-workflows/reusing-workflows#creating-a-reusable-workflow)

See https://github.com/r-lib/actions/tree/master/examples