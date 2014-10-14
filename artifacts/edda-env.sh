#!/bin/bash

export GRADLE_HOME=/usr/lib/edda/lib
export CLASSPATH_JARS="
/usr/share/java/log4j.jar
"

export CLASSPATH=$(echo "$CLASSPATH_JARS" | grep -vP '^\s*$' | paste -d: -s)
