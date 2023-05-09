export LC_ALL=en_US.UTF-8
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/local:$PATH
export PATH=$HOME/local/nvim/bin:$PATH

export QT_QPA_PLATFORMTHEME=qt5ct
export XDG_CONFIG_HOME=$HOME/.config
export BROWSER=/usr/bin/brave
export TERMINAL=/usr/bin/kitty
export EDITOR=$HOME/local/nvim/bin/nvim
export VISUAL=$HOME/local/nvim/bin/nvim

export MANPAGER="nvim +Man!"
export MANWIDTH=100
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# FZF
export FZF_DEFAULT_COMMAND="fd --unrestricted --full-path --color=always -E '/.*' -E node_modules -E .git -E target"
export FZF_DEFAULT_OPTS="--ansi --info=inline --color=gutter:#000000 --no-scrollbar --border=rounded"

# lf
. $HOME/bin/lf_icons
export PATH=$HOME/local/lfimg:$PATH

# Go
export PATH=$(go env GOPATH)/bin:$PATH

# Rust
export PATH=$HOME/.cargo/bin:$PATH

# zk
export ZK_NOTEBOOK_DIR=$HOME/data/notes

# Solana
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

# Avm
export PATH=$HOME/.avm/bin:$PATH

# Snapcraft creds
export SNAPCRAFT_STORE_CREDENTIALS="$(cat $HOME/elixir_games/snapcredentials)"
