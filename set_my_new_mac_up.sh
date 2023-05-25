# update brew packages
brew update

# upgrade brew packages
brew upgrade

# install nerd font of choice
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

# install bitwarden for password management
brew install --cask bitwarden

# install firefox for browsing
brew install --cask firefox

# install clipboard manager of choice
brew install --cask maccy

# install aws cli for cloud ops
brew install awscli

# install terminal emulator of choice
brew install --cask wezterm
# setup wezterm by copying the current .wezterm.lua config
cp .wezterm.lua ~/.wezterm.lua

# install shell prompt
brew install starship
# setup shell prompt installed above
# create .zshrc at home dir if not already present
touch ~/.zshrc
# add line at end of file, if line doesn't exist
grep -qxF 'eval "$(starship init zsh)"' ~/.zshrc || echo 'eval "$(starship init zsh)"' >> ~/.zshrc

# install command line helper tool
brew install fig

# install discord
brew install --cask discord

# install spotify
brew install --cask spotify

# install and setup container runtimes
# install docker
brew install docker
# install colima
brew install colima
# start colima
colima start
# install docker compose v2
brew install docker-compose
# creating symlink for docker to find the compose cli plugin
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
# setup and install docker buildx
brew install docker-buildx
# creating symlink for docker to find the buildx cli plugin
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-buildx/bin/docker-buildx ~/.docker/cli-plugins/docker-buildx
# use buildx as default in build
docker buildx install
# stop colima
colima stop

# cleanup
brew cleanup