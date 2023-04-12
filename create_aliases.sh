#!/bin/bash

# Define the alias content
alias_content=$(cat <<EOF
#TERMINAL specific alias
alias cc="cd && clear"
alias la="ls -la"
alias ll="ls -l"
alias sz="source ~/.zshrc"
alias cl="cd \$1 && ll"

# TMUX specific alias
alias tl="tmux ls"
alias ta="tmux attach -t"
alias tns="tmux new -s"
alias trs="tmux rename-session -t"
alias tks="tmux kill-session -t"
EOF
)

# Create the .zsh_aliases file
echo "$alias_content" > ~/.zsh_aliases

# Source the .zsh_aliases file in the current shell session
source ~/.zsh_aliases

