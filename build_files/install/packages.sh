#!/bin/bash

set -euxo pipefail

EXCLUDED_PACKAGES=(
	toolbox
)
dnf -y remove "${EXCLUDED_PACKAGES[@]}"

INCLUDED_PACKAGES=(
	adw-gtk3-theme
	alacritty
	autofs
	bat
	carapace
	chezmoi
	cliphist
	darkman
	dbus-daemon
	distrobox
	dysk
	eza
	fastfetch
	fd-find
	fzf
	grc
	mpv
	ripgrep
	starship
	tldr
	tmux
	trash-cli
	vim
	wayvnc
	wlogout
	wtype
	xdg-terminal-exec
	zoxide
	zsh
)
dnf -y --enable-repo terra install "${INCLUDED_PACKAGES[@]}"
