#!/usr/bin/env bash

ecrlogin()
{
    AWS_PROFILE=${1:-"default"}
    LOGIN_SCRIPT=$(aws ecr get-login --no-include-email --region us-east-1 --profile ${AWS_PROFILE})
    eval $LOGIN_SCRIPT
}

