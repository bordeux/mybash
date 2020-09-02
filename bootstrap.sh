#!/usr/bin/env bash

export MY_BASH_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

eval $(cat ${HOME}/.env | sed 's/^/export /')

# include all aliases
source <(cat ${MY_BASH_PATH}/alias/*.sh)

# include all fynctions
source <(cat ${MY_BASH_PATH}/functions/*.sh)

# include all fynctions
source <(cat ${MY_BASH_PATH}/others/*.sh)
