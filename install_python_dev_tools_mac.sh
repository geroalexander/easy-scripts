#!/bin/bash

# Check if Homebrew is installed, and install it if necessary
if test ! $(which brew); then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Define list of packages to check and install
packages=("python" "virtualenv" "openssl" "readline" "sqlite3" "xz" "zlib")

# Loop through packages and check/install if necessary
for package in "${packages[@]}"
do
    if brew list -1 | grep -q "^${package}\$"; then
        echo "${package} is already installed"
    else
        echo "Installing ${package}..."
        brew install ${package}
    fi
done

# Activate virtualenv and install packages
echo "Creating a virtual environment and installing packages..."
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt

echo "Setup complete!"

