#!/bin/bash
echo "Running Dockerfile Check..."
while getopts v: flag
do
    case "${flag}" in
        v) printEnv=${OPTARG};;
    esac
done

if [[ "$printEnv" == "verbose" ]];
then
	semgrep --verbose --config=/Users/Harjeet.S.Parmar/Development/semgrep/local-registry/docker/dockerfile-ultimate-user-check.yaml
else
	semgrep --config=/Users/Harjeet.S.Parmar/Development/semgrep/local-registry/docker/dockerfile-ultimate-user-check.yaml
fi
