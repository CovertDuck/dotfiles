#!/usr/bin/env sh

echo "alias ll='ls -al'" >> ~/.aliases
echo "alias la='ls -A'" >> ~/.aliases

# Get lazygit and lazydocker and set them in ~/.ocal/bin

# Get lazygit
curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest \
| grep "browser_download_url.*linux_amd64.tar.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -

tar -xvf lazygit*.tar.gz
mv lazygit ~/.local/bin

# Get lazydocker
curl -s https://api.github.com/repos/jesseduffield/lazydocker/releases/latest \
| grep "browser_download_url.*linux_amd64.tar.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -

tar -xvf lazydocker*.tar.gz
mv lazydocker ~/.local/bin
