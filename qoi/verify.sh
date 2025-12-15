#!/bin/bash

# kill subprocesses on exit or kill
trap '[ -n "$(jobs -pr)" ] && kill -9 $(jobs -pr)' SIGINT SIGTERM EXIT

stainless-dotty verified/common.scala verified/encoder.scala verified/decoder.scala -J-Xms10G -J-Xss20M --config-file=stainless.conf "$@"