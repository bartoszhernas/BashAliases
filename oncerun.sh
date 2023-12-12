defaults write -g ApplePressAndHoldEnabled -bool false
defaults -currentHost write -g AppleFontSmoothing -int 0
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.codeweavers.CrossOver BottleDir "/Volumes/NVME/Bottles"
defaults write com.apple.dock autohide-delay -float 0; 
defaults write com.apple.dock autohide-time-modifier -int 0;
killall Dock;

rm ~/.zshrc ~/.zprofile ~/.vimrc ~/.bashrc ~/.bash_profile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
rm -f ~/.gitconfig && ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

ln -s ~/.dotfiles/murder /usr/local/bin/murder
