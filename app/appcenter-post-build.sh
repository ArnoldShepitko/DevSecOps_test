#!/usr/bin/env bash -e

appName="DevSecOps_test"
appCenterLoginApiToken="c3fdbd88bce3cc91b0cd7ca807cac49ff6fd503f"

uiTestProjectName="DevSecOps_test.UITests"
locale="en_US"

if [ "$APPCENTER_BRANCH" == "master"];
then
  msbuild $APPCENTER_SOURCE_DIRECTORY/$uiTestProjectName/p:Configuration=Release
  appcenter test run espresso --app "shepitko.arnold-gmail.com/ToDo-List-DevSecops" --devices aee126b6 \
  --app-path app/build/outputs/apk/debug/app-debug.apk --test-series "master" --locale locale --build-dir app/build/outputs/apk/debug/
fi




