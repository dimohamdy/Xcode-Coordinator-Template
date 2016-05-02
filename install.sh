#!/bin/sh

VERSSION="1.0.0"
CURRENT_DIR=$(pwd)
TEMP_DIR="/tmp"
ARCHIVE_NAME="Xcode-Coordinator-Template"
RELEASE_URL="https://github.com/phranck/Xcode-Coordinator-Template/archive/$VERSSION.zip"
UNZIP_DIR="$TEMP_DIR/$ARCHIVE_NAME-$VERSSION"
TEMPLATE_DIR="$HOME/Library/Developer/Xcode/Templates/File Templates/Source/"
iOS_TEMPLATE='Cocoa Touch Coordinator.xctemplate'
OSX_TEMPLATE='Cocoa Coordinator.xctemplate'

cd "$TEMP_DIR"
curl -SL $RELEASE_URL > "$ARCHIVE_NAME.zip"
unzip -oq "$ARCHIVE_NAME.zip"

cp -a "$UNZIP_DIR/$iOS_TEMPLATE" "$TEMPLATE_DIR"
cp -a "$UNZIP_DIR/$OSX_TEMPLATE" "$TEMPLATE_DIR"

rm -rf "$ARCHIVE_NAME.zip"
rm -rf "$UNZIP_DIR"

cd "$CURRENT_DIR"
echo "\n😊  $ARCHIVE_NAME successfuly installed.\n"