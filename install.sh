#!/bin/sh

CLONE_DIR=$(pwd)
TEMPLATE_DIR="Library/Developer/Xcode/Templates/File Templates/Source/"
DEST_DIR="$HOME/$TEMPLATE_DIR"
TEMPLATE='Objective-C Coordinator.xctemplate'

cd "$HOME"
mkdir -p "$TEMPLATE_DIR"
cp -a "$CLONE_DIR/$TEMPLATE" "$DEST_DIR"
