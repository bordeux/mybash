#!/usr/bin/env bash

OS=$(uname -s)

if [ "${OS}" = "Darwin" ]
then
  SSH_PRIVATE_KEY=$(cat ~/.ssh/id_rsa | base64 )
else
  SSH_PRIVATE_KEY=$(cat ~/.ssh/id_rsa | base64 -w 0)
fi

export BB_PIPELINES_SSH_PRIVATE_KEY=${SSH_PRIVATE_KEY}