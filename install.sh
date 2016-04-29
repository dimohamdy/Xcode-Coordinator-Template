#!/bin/sh

CLONE_DIR=$(pwd)
TEMPLATE_DIR="Library/Developer/Xcode/Templates/File Templates/Source/"
DEST_DIR="$HOME/$TEMPLATE_DIR"
iOS_TEMPLATE='Cocoa Touch Coordinator.xctemplate'
OSX_TEMPLATE='Cocoa Coordinator.xctemplate'

cd "$HOME"
mkdir -p "$TEMPLATE_DIR"
cp -a "$CLONE_DIR/$iOS_TEMPLATE" "$DEST_DIR"
cp -a "$CLONE_DIR/$OSX_TEMPLATE" "$DEST_DIR"
