#Terminal setup

Using iTerm (https://iterm2.com)

with the Molokai color scheme (http://iterm2colorschemes.com)

at least set Cursor color to #fe40ff - grey sucks

to match the rest of my colors:
- normal yellow to #ed8e1e
- bright blue to #af81ff
- bright magenta to #f92a72

gonna need to download and install the font Meslo LG S Regular for Powerline
(https://github.com/powerline/fonts/tree/master/Meslo%20Slashed)

#All the configs

- `git clone https://github.com/ericharm/vim-setup.git`
- `cd vim-setup`
- `shopt -s dotglob` so the mv command will move hidden files
- `rm .gitignore readme.md` otherwise you'll overwrite your system-wide .gitignore file (mine is set to ignore .DS_Store and .swp files)
- `rm -rf ~/.vim/`
- `mv -rf ./* ~/`
- Feel free to delete the folder you cloned to: `cd .. && rm -rf vim-setup`

#Tmux and zsh

`brew install tmux`
`brew install zsh`

download zsh and
tell iTerm to use zsh as the default shell

set up the tmux -2 flag to use 256 colors
