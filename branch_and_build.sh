#!/bin/bash

LINUX_FLAVOR=$(cat /etc/os-release | sed 's/"//g' | sed -n '/^ID=/ s/^ID=\(.*\)/\1/p')
VERSION_ID=$(cat /etc/os-release | sed 's/"//g' | sed -n '/^VERSION_ID/ s/^VERSION_ID=\(.*\)/\1/p')
R_VERSION=$(R --version | sed -n '/R version/ s/.* version \([0-9]\+\.[0-9]\+\.[0-9]\+\) .*/\1/p')

BRANCH_NAME=dev-linux-${LINUX_FLAVOR}${VERSION_ID}-R$R_VERSION

echo $BRANCH_NAME

rm -rf renv
rm .Rprofile
rm renv.lock
git branch -D ${BRANCH_NAME}

git fetch
git checkout dev-project-empty
git checkout -b ${BRANCH_NAME}
git merge -X theirs --no-edit origin/dev-package-install
Rscript R/renv_init.R
Rscript R/install_packages.R
git add -A renv
git commit -m "renv build: ${BRANCH_NAME}"
