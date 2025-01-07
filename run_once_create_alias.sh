#!/usr/bin/env sh

echo "alias ll='ls -al'" >> ~/.aliases
echo "alias la='ls -A'" >> ~/.aliases

# Install go
sudo apt-get install golang-go

# Install lazy*
go install github.com/jesseduffield/lazygit@latest
go install github.com/jesseduffield/lazynpm@latest
go install github.com/jesseduffield/lazydocker@latest
