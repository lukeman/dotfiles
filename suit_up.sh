#!/bin/bash

cd && [ -d '.files' ] && ls -1d .files/files/* .files/files/.* | while read f; do
    [ "$f" == '.files/files/.' ] ||
    [ "$f" == '.files/files/..' ] ||
    [ "$f" == '.files/files/.git' ] ||
    ln -vsf "$f" .
done

# Let's hide the unsightly UNIX directories.
SetFile -P -a V ~/bin
SetFile -P -a V ~/etc
