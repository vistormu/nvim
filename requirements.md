# Requierements

- Packer:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- Pyright:
```
sudo apt install nodejs npm
```
```
npm i -g pyright
```

- Copilot:
```
git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim
```

- Clipboard support:
```
sudo apt install xclip
```

- Nerd font:

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
