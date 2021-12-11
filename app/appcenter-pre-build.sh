#!/usr/bin/env bash

MANIFEST = "$APPCENTER_SOURCE_DIRECTORY/app/src/main/AndroidManifest.xml"
NEW_VERSION=${MAJOR_VERSION}.${MINOR_VERSION}.${APPCENTER_BUILD_ID}

sed -i -e "s/versionName=\".*\"/versionName=\"${NEW_VERSION}\"/g" $MANIFEST
