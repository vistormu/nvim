# Requierements

## Packer
Packer is the package manager of neovim.

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Pyright
Pyright is an LSP for Python.

Install the latest version of `NodeJS` and `npm`:
```
curl -fsSL hhtps://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs npm
```

Then install Pyright
```
npm i -g pyright
```

## Clipboard support:
```
sudo apt install xclip
```

## Nerd font:

Download from webpage:
```
https://www.nerdfonts.com/font-downloads
```

Unzip:
```
unzip /path/to/file
```
sudo mv /path/to/font/* /usr/share/fonts/

Build the font cache:
```
fc-cache -fv
```

```
fc-list
gsetting set org.gnome.desktop.interface monospace-font-name 'Font 14'
```

## Ripgrep for telescope
If telescope does not work, you have to install `ripgrep`:
```
sudo apt install ripgrep
```

## Latex
Download the LaTeX compiler for your device.

Linux:
```
sudo apt install latexmk
```

Install the recommended texlive fonts:
```
sudo apt install texlive-fonts-recommended
```
