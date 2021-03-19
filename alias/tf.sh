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
alias tf13="/usr/local/Cellar/terraform@0.13/0.13.5/bin/terraform"
alias tf=terraform

alias tfa="terraform apply"
alias tfi="terraform init"
alias tfp="terraform plan | landscape"
alias tfs="terraform show"
alias tfo="terraform output"
alias tfv="terraform version"
alias tfwl="terraform workspace list"
alias tfwn="terraform workspace new"
alias tff="terraform fmt"
alias tfws="terraform workspace select"

alias tf12="/usr/local/opt/terraform@0.12/bin/terraform"