#!/bin/bash
CLJDOC_ROOT="$HOME/git/upstream/cljdoc"
CLJDOC_SCRIPT="script/cljdoc"
GROUP="org.clojars.teodorlu"
PROJECT="duct-unofficial-docs"
VERSION="0.2.2-SNAPSHOT"
PATH_HERE="$HOME/git/duct-unofficial-docs"

if [ "$(git status --porcelain)" ]; then
    >&2 echo "You have uncommitted changes in your repository."
    >&2 echo "Note that docs will be built from master, and ignores uncommitted changes."
fi

cd "$CLJDOC_ROOT" && "$CLJDOC_SCRIPT" ingest -p "$GROUP/$PROJECT"  -v "$VERSION" --git "$PATH_HERE"
echo "View docs at http://localhost:8000/d/${PROJECT}/${PROJECT}/${VERSION}"
