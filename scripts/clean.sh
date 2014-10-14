#!/bin/bash -eu

ROOT_DIR=$(readlink -f $(dirname $0)/..)

source $ROOT_DIR/scripts/config.sh

[ -n "$APP_HOME" ] && [ -d "$APP_HOME" ] && \
    rm -rf $APP_HOME
