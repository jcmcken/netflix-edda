#!/bin/bash -eu

ROOT_DIR=$(readlink -f $(dirname $0)/..)

source $ROOT_DIR/scripts/config.sh

set -o pipefail

grep ^version $APP_HOME/src/gradle.properties | head -1 | cut -d= -f2
