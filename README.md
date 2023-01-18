# Dotfiles 🍚🍚
My Arch rice(I use arch btw). Mainly for coding. Written for Thinkpad x201, so it's preety lightweight.

### Features
- Simple 💡
- Lightweight 🧯
- Lightning fast ⚡
- Easy to develop 🔭
- Rust-powered 🦀

### Requirements
- Make sure you have those packages, use your package manager
```
sudo pacman -Syu git kitty fish stow i3 rofi ripgrep exa ranger feh
```
Or 
```shell
paru -S git kitty fish stow i3 rofi ripgrep exa ranger
```
> You can add picom as well but it's for stronger machines
```shell
sudo pacman -S picom
```
```shell
paru -S picom
```

### Installation guide
> Easy way

I've got preety standard setup so you can just copy-paste contents of this repo to your .config folder
The only thing that goes to ~ is .xinitrc(i use startx btw).
```bash
git clone https://github.com/dsrcr/dotfiles
```
At this point you are done, you can use the system, or customize it.

> Recommended way

In order to set this up properly you nedd to install gnu-stow. I plan on making an install script but for now I don't need it much.
At first just grab the repo and store it somewhere you like.

```shell
git clone https://github.com/dsrcr/dotfiles ~/repos
```

Then navigate do ***~/.config*** and copy following commands
```shell
mkdir i3 rofi kitty fish
```
When you have done the project tree you need to stow the dotfiles
Run this command for every package you want to stow(yes I know, this can be automated)
```
stow -d ~/yourDirectory/dotfiles/ -t ~/.config/package package/
```
Remember to change package name and directory, don't just copy-paste.

> For example:
```shell
stow -d ~/repos/dotfiles/ -t ~/.config/fish fish/
```
This command will set up my fish dotfiles


### Customization guide

