#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Check if Git is installed
if ! command -v git &> /dev/null; then
    # Install Git
    brew install git
    echo "Git has been installed."
else
    echo "Git is already installed."
fi

# Check if Node.js and npm are installed
if ! command -v node &> /dev/null; then
    # Install Node.js and npm
    brew install node
    echo "Node.js and npm have been installed."
else
    echo "Node.js and npm are already installed."
fi

# Check if Visual Studio Code is installed
if ! command -v code &> /dev/null; then
    # Install Visual Studio Code
    brew install --cask visual-studio-code
    echo "Visual Studio Code has been installed."
else
    echo "Visual Studio Code is already installed."
fi

# Check if iTerm2 is installed
if ! command -v iterm2 &> /dev/null; then
    # Install iTerm2
    brew install --cask iterm2
    echo "iTerm2 has been installed."
else
    echo "iTerm2 is already installed."
fi

# Check if Tmux is installed
if ! command -v tmux &> /dev/null; then
    # Install Tmux
    brew install tmux
    echo "Tmux has been installed."
else
    echo "Tmux is already installed."
fi

# Check if TypeScript is installed
if ! type tsc >/dev/null 2>&1; then
    # If TypeScript is not installed, install it
    echo "TypeScript is not installed, installing..."
    npm install -g typescript
    echo "TypeScript has been installed."
else
    # If TypeScript is already installed, print a message
    echo "TypeScript is already installed."
fi
