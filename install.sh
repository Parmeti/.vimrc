#!/bin/sh

dot_list="bashrc config emacs gitconfig gitignore jnewsrc mozilla msmtprc muttrc signature slrnrc ssh vim vimrc Xdefaults"

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done
nix profile install nixpkgs#ccls
nix profile install nixpkgs#ripgrep
nix profile install nixpkgs#openjdk17

export JAVA_HOME="$HOME/.nix-profile/lib/openjdk"
