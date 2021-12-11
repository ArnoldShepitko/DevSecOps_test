#!/usr/bin/env bash -e

echo "Found Unit test projects:"
find $APPCENTER_SOURCE_DIRECTORY -regex '.*UnitTests.*\.java' exec echo {} \;
echo
echo "Run Unit test projects:"
find $APPCENTER_SOURCE_DIRECTORY -regex '.*UnitTests.*\.java' | xargs dotnet
test;