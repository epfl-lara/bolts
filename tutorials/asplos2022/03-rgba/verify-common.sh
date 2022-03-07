#!/bin/bash

# kill subprocesses on exit or kill
trap '[ -n "$(jobs -pr)" ] && kill -9 $(jobs -pr)' SIGINT SIGTERM EXIT

../stainless/stainless.sh common.scala "$@"
