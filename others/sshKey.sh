#!/usr/bin/env bash

SSH_PRIVATE_KEY=$(cat ~/.ssh/id_rsa | base64)
export BB_PIPELINES_SSH_PRIVATE_KEY=${SSH_PRIVATE_KEY}