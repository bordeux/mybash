#!/usr/bin/env bash

ecrlogin()
{
    AWS_PROFILE=${1:-"default"}
    PASSWORD=$(aws ecr get-login-password --region us-east-1 --profile ${AWS_PROFILE})
    ACCOUNT_ID=$(aws sts get-caller-identity --profile ${AWS_PROFILE} | jq -r ".Account")
    docker login -u AWS -p ${PASSWORD} ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com
}
