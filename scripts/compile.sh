#!/bin/bash -eu

ROOT_DIR=$(readlink -f $(dirname $0)/..)

source $ROOT_DIR/scripts/config.sh
source $APP_HOME/etc/edda-env.sh

pushd $APP_HOME
./bin/gradlew build
popd

exit 0
