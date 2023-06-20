# monoRepoR
Test repo to apply the same worklows on several packages in a mono repo.


## Creating the packages

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