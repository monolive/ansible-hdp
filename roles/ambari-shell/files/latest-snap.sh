#!/bin/bash

: ${JAR_PATH:=/tmp/ambari-shell.jar}
SNAPSHOT_URL=http://maven.sequenceiq.com/releases
PACKAGE=com/sequenceiq
ARTIFACT=ambari-shell
FULLNAME=$PACKAGE/$ARTIFACT

VERSION=$(curl -Ls $SNAPSHOT_URL/$FULLNAME/maven-metadata.xml|sed -n "s/.*<version>\([^<]*\).*/\1/p" |tail -1)

echo latest jar version is $VERSION ...
echo downloading exetuable jar into $JAR_PATH ...
curl -o $JAR_PATH $SNAPSHOT_URL/$FULLNAME/$VERSION/$ARTIFACT-$VERSION.jar

echo To start ambari-shell type:
echo =========================================
echo java -jar $JAR_PATH
echo =========================================
