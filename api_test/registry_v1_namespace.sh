#!/bin/bash

# create namespace
msg "create a registry namespace for user admin@admin.com"
http --check-status --ignore-stdin --timeout=4.5 post $SERVER_PATH/registry/v1/namespace Authorization:$token namespace=testabc &>/dev/null
if [ "$?" != "0" ]
then
  fail "failed to create namespace for user admin@admin.com"
fi
