#!/usr/bin/env bash

export NIX_PROFILE_HOME="$HOME/.nix-profile"
for profile in \
	"$NIX_PROFILE_HOME/etc/profile.d/nix.sh" \
	"$NIX_PROFILE_HOME/etc/profile.d/hm-session-vars.sh"; do
	if [[ -f $profile ]]; then
		. "$profile"
	fi
done
unset profile

# user specific environment
path="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.pnpm/bin"
if [[ ! "$PATH" =~ "$path:" ]]; then
	PATH="$path:$PATH"
fi
unset path
export PATH
