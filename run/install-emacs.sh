#/usr/bin/env bash

set -e

sudo apt update

sudo apt install -y git build-essential autoconf automake texinfo \
    libgtk-3-dev libgnutls28-dev libjansson-dev libgccjit-12-dev \
    libtiff-dev libgif-dev libjpeg-dev libpng-dev libxpm-dev

if [ -d emacs/.git ]; then
  pushd emacs
  git pull --ff-only
else
  git clone https://git.savannah.gnu.org/git/emacs.git --depth=1
  pushd emacs
fi


./autogent.sh

./configure --with-pgtk --with-tree-sitter --with-imagemagick --with-native-compilation

make -j"$(nproc)"
sudo make install

popd

echo "✅ Emacs installed."
