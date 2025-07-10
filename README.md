Dot files
These are config files that i stole from various other ppl like Jakoolit and many more because i am too lazy to config myself. If you want to replicate my system, use the instructions below
Usage

    Clone the repo

git clone https://github.com/arjav0703/dots.git

    Copy and paste all the files from this repo to your .config directory

cp ./dots/* ~/.config/ -r

For Nix users: I do not use home-manager to manage my dotfiles. I use flakes just for systemwide configs. Note: My dotfiles are spread accross 2 repositories, this one and lonely-burrow. The reason for this seperation is that this repo contains dotfiles that are "App" specific (for example: neovim) which can be used on any distro. But, the other repo consists my NixOS config which is used for system configurations which means that it can only be used on NixOS.
