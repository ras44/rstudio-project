# rstudio-project
Template RStudio project with preinstalled libs managed by packrat

## Introduction
This repo contains starter RStudio projects for fixed versions of R.  Browse through the [branches](https://github.com/ras44/rstudio-project/branches) and [releases](https://github.com/ras44/rstudio-project/releases) to find one that suits your linux flavor and your version of R.

Please star this repo if you find it useful.

## Contribute
We welcome pull requests for new linux flavors and R versions.

To create a build:
- fork this repo on github
- clone your fork locally
- then run:

```
./new_branch.sh #create a new branch for your linux flavor and R version`
Rscript R/install_packages.R
git add -A .
git push origin HEAD
```

- submit an [issue](https://github.com/ras44/rstudio-project/issues) requesting a new fork for your branch, please include the name of your branch 
- submit a pull request to merge the branch of your fork to the newly-created branch in our repo


## Requests

Please submit requests for flavor/R-version builds through an [issue](https://github.com/ras44/rstudio-project/issues).
