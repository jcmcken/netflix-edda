#!/bin/bash -eu

ROOT_DIR=$(readlink -f $(dirname $0)/..)

source $ROOT_DIR/scripts/config.sh

[ -d "$APP_HOME" ] && \
  echo " error: directory '$APP_HOME' exists already!" && exit 1

which javac
which java

exit 0
