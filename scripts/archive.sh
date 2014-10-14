#!/bin/bash -eu

ROOT_DIR=$(readlink -f $(dirname $0)/..)

source $ROOT_DIR/scripts/config.sh

VERSION=$($ROOT_DIR/scripts/version.sh)

TARFILE=$WORKING_DIR/netflix-edda-$VERSION.tar.gz 

tar cfz $TARFILE $APP_HOME/*

echo $TARFILE
