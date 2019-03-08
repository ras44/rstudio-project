#!/bin/bash

LINUX_FLAVOR=$(cat /etc/os-release | sed -n '/^ID=/ s/^ID="\(.*\)"/\1/p')
VERSION_ID=$(cat /etc/os-release | sed -n '/^VERSION_ID/ s/^VERSION_ID="\(.*\)"/\1/p')
R_VERSION=$(R --version | sed -n '/R version/ s/.* version \([0-9]\+\.[0-9]\+\.[0-9]\+\) .*/\1/p')

BRANCH_NAME=dev-linux-${LINUX_FLAVOR}${VERSION_ID}-R$R_VERSION

echo $BRANCH_NAME

git checkout dev-project-empty
git checkout -b ${BRANCH_NAME}
