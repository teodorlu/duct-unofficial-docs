#!/bin/bash
CLJDOC_ROOT="$HOME/git/upstream/cljdoc"
CLJDOC_SCRIPT="script/cljdoc"
PROJECT="duct-unofficial-docs"
VERSION="0.1.0-SNAPSHOT"
PATH_HERE="$HOME/git/duct-unofficial-docs"

echo "Please ensure that you've committed all your changes before running this."

cd "$CLJDOC_ROOT" && "$CLJDOC_SCRIPT" ingest -p "$PROJECT"  -v "$VERSION" --git "$PATH_HERE"
echo "View docs at http://localhost:8000/d/${PROJECT}/${PROJECT}/${VERSION}"
