# rstudio-project
Template RStudio project with preinstalled libs managed by packrat.

## Introduction
This repo contains starter RStudio projects for fixed versions of R.  Browse through the [branches](https://github.com/ras44/rstudio-project/branches) and [releases](https://github.com/ras44/rstudio-project/releases) to find one that suits your linux flavor and your version of R.

Please star this repo if you find it useful.

## Contribute
We welcome pull requests for new linux flavors and R versions.

Note: to create a new build we recommend starting with a clean instance based off of [rstudio-instance](https://github.com/ras44/rstudio-instance). Your instance's R installation must have packrat already installed via `install.packages("packrat")`.

To create a build:
- fork this repo on github
- clone your fork locally
- then run:

```
./branch_and_build.sh
```

- submit an [issue](https://github.com/ras44/rstudio-project/issues) requesting a new fork for your branch, please include the name of your branch 
- once the new branch is approved, submit a pull request to merge the branch of your fork to the newly-created branch in rstudio-project 


## Requests

Please submit requests for flavor/R-version builds through an [issue](https://github.com/ras44/rstudio-project/issues).


## Structure
- `dev-project-empty` contains an empty R project
- `dev-package-install` contains the files used to install a set of R packages
- `branch_and_build.sh` will create a branch name based on your system.  It then branches off of `dev-project-empty` and merges in `dev-package-install` before building all libraries for your system.  After building, the files in the base `rstudio-project` folder can be used as a template RStudio project via `cp -r rstudio-project new_r_project`.
