#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo Updaing submodule...
git submodule update
echo Replacing configs...
cp -r $SCRIPT_DIR/content $SCRIPT_DIR/..
echo Done.