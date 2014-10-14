# Env info
UMASK=0022
WORKING_DIR=/tmp

# Deploy directory information
# NOTE: Gradle doesn't currently support vendoring dependencies with
#       relative path names. So you should change this value to the value
#       you wish to deploy to on your production hosts. But: Might as well
#       just leave it alone!
APP_HOME=/usr/lib/edda
SRC_DIR_NAME=src
ETC_DIR_NAME=etc
BIN_DIR_NAME=bin
LIB_DIR_NAME=lib

# Code information
GIT_REPO=https://github.com/Netflix/edda.git

# Executed actions
umask $UMASK
