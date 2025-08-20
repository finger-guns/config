#!/usr/bin/env bash

set -e

curl -s 'https://api.github.com/repos/be5invis/Iosevka/releases/latest' | jq -r ".assets[] | .browser_download_url" | grep PkgTTC-Iosevka | xargs -n 1 curl -L -O --fail --silent --show-error

# TODO: Grab unzip of the first thing -

# unzip ***

mv *.ttc ~/.local/share/fonts/


fn-cache -f -v

exit
