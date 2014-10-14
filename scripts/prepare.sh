#!/bin/bash -eu

ROOT_DIR=$(readlink -f $(dirname $0)/..)

source $ROOT_DIR/scripts/config.sh

echo ' info: creating deploy directories'
install -m 0755 -d $APP_HOME/{$BIN_DIR_NAME,$ETC_DIR_NAME,$LIB_DIR_NAME,log}

echo ' info: installing custom scripts/configs'
for bin in gradlew edda; do
  install -m 0755 $ROOT_DIR/artifacts/$bin $APP_HOME/$BIN_DIR_NAME
done

for conf in edda-env.sh gradle.properties; do
  install -m 0644 $ROOT_DIR/artifacts/$conf $APP_HOME/$ETC_DIR_NAME
done

pushd $APP_HOME/$ETC_DIR_NAME
ln -s ../src/src/main/resources/edda.properties
popd

echo ' info: cloning code repo'
pushd $APP_HOME
git clone $GIT_REPO $SRC_DIR_NAME
popd
