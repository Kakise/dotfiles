source /Users/kakise/.antigen.zsh
path+=('/Users/kakise/Library/Python/3.9/bin')
path+=('$HOME/bin:/usr/local/bin')
export CMAKE_PREFIX_PATH="/opt/homebrew"
export CMAKE_TOOLCHAIN_FILE="/Users/kakise/vcpkg/scripts/buildsystems/vcpkg.cmake"
export VCPKG_ROOT="/Users/kakise/vcpkg"
alias axbrew='arch -x86_64 /usr/local/homebrew/bin/brew'
alias vim="nvim"
export PATH


# Use tmux by default because I prefer it
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux a -t default || exec tmux new -s default && exit;
fi

# Oh-my-zsh stuff

antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme cypher
eval $(thefuck --alias fuck)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

antigen apply

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
