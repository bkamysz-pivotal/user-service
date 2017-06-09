#!/bin/bash

set -e

#VERSION=`cat version/number`

pushd user-service
#  ./gradlew -PversionNumber=$VERSION clean assemble
  ./gradlew clean assemble
popd

#cp project/build/libs/$ARTIFACT_ID-$VERSION.jar build-output/.
cp user-service/build/libs/$ARTIFACT_ID.jar build-output/.
