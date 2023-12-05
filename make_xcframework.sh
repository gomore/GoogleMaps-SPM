#!/bin/bash

BUILD_DIRECTORY="Build"
CARTHAGE_XCFRAMEWORK_DIRECTORY="Carthage/Build/"

function archive_project() {
  project_name=$1
  framework_name=$2

  # Archive iOS project.
  xcodebuild archive\
   -project "../$project_name.xcodeproj"\
   -scheme "$framework_name"\
   -configuration "Release"\
   -destination "generic/platform=iOS"\
   -archivePath "$framework_name.framework-iphoneos.xcarchive"\
   SKIP_INSTALL=NO\
   BUILD_LIBRARY_FOR_DISTRIBUTION=YES

  # Archive iOS Simulator project.
  xcodebuild archive\
     -project "../$project_name-sim.xcodeproj"\
     -scheme "$framework_name"\
     -configuration "Release"\
     -destination "generic/platform=iOS Simulator"\
     -archivePath "$framework_name.framework-iphonesimulator.xcarchive"\
     SKIP_INSTALL=NO\
     BUILD_LIBRARY_FOR_DISTRIBUTION=YES
}

function create_xcframework() {
  project_name=$1
  framework_name=$2

  # Archive Xcode project.
  archive_project $project_name $framework_name

  # Create XCFramework from the archived project.
  xcodebuild -create-xcframework\
    -framework "$framework_name.framework-iphoneos.xcarchive/Products/Library/Frameworks/$framework_name.framework"\
    -framework "$framework_name.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/$framework_name.framework"\
    -output "$framework_name.xcframework"

  # Compress the XCFramework.
  zip -r -X "$framework_name.xcframework.zip" "$framework_name.xcframework/"
}

function prepare() {
  # Create Build directory if not existing.
  if [ ! -d "$BUILD_DIRECTORY" ]; then
    mkdir $BUILD_DIRECTORY
  fi

  cd $BUILD_DIRECTORY
}

function cleanup() {
  rm -r *.xcframework
  rm -r *.xcarchive
}

function generate_checksum() {
  prepare

  # Save the SHA-256 checksum.
  shasum -a 256 "GoogleMaps.xcframework.zip" > checksum
  shasum -a 256 "GoogleMapsBase.xcframework.zip" >> checksum
  shasum -a 256 "GoogleMapsCore.xcframework.zip" >> checksum
}

function build_xcproject_project() {
  prepare

  create_xcframework "GoogleMaps" "GoogleMaps"
  create_xcframework "GoogleMaps" "GoogleMapsBase"
  create_xcframework "GoogleMaps" "GoogleMapsCore"

  generate_checksum

  cleanup
}

function help() {
  # Display help.
  echo "Syntax: make_xcframework [-x|h]"
  echo "options:"
  echo "x     Create an XCFramework by building the Xcode project."
  echo "c     Generate checksum."
  echo "h     Print this Help."
  echo
}

while getopts ":hxcg" flag; do
   case "${flag}" in
      h) # display Help
        help
        exit;;
      x) # Build Xcode project
        build_xcproject_project
        echo $'\n** XCFRAMEWORK CREATION FINISHED **\n'
        exit;;
      c) # Generate checksum for zips
        generate_checksum
        echo $'\n** CHECKSUM CREATION FINISHED **\n'
        exit;;
     \?) # Invalid option
        echo "Error: Invalid option"
        exit;;
   esac
done
