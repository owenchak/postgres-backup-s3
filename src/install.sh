#! /bin/sh

set -eux
set -o pipefail

apk update

# install pg_dump
apk add postgresql-client=15.*

# install gpg
apk add gnupg

apk add python3
apk add py3-pip  # separate package on edge only
pip3 install awscli

apk del curl

# cleanup
rm -rf /var/cache/apk/*
