#!/bin/bash
set -ex
cd b
bazel build -c opt @a//:app
