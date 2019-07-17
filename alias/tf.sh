#!/usr/bin/env bash

_terraform()
{
    if grep -q 'required_version.*0\.12' *.tf 2>/dev/null ; then
        tf $@
    else
        tf11 $@
    fi
}

tws()
{
    if [[ -z "$1" ]]; then
        _terraform workspace show
    else
        _terraform workspace select "$1"
    fi
}

alias tf11="/usr/local/opt/terraform@0.11/bin/terraform"
alias tf=terraform

alias ta="_terraform apply"
alias ti="_terraform init"
alias tp="_terraform plan | landscape"
alias ts="_terraform show"
alias to="_terraform output"
alias tv="_terraform version"
alias twl="_terraform workspace list"
alias twn="_terraform workspace new"
