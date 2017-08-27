# Terminal setup

- Using iTerm (https://iterm2.com)
- with the Molokai color scheme (http://iterm2colorschemes.com)
- Preferences > Profiles > Keys > Left Option Key acts as +Esc

## Pretty colors
- at least set Cursor color to #fe40ff - grey sucks
 to match the rest of my colors:
- normal yellow to #ed8e1e
- bright blue to #af81ff
- bright magenta to #f92a72

gonna need to download and install the font Meslo LG S Regular for Powerline
(https://github.com/powerline/fonts/tree/master/Meslo%20Slashed)

# All the configs

- `git clone https://github.com/ericharm/vim-setup.git`
- `cd vim-setup`
- `shopt -s dotglob` so the mv command will move hidden files
- `rm .gitignore readme.md` otherwise you'll overwrite your system-wide .gitignore file (mine is set to ignore .DS_Store and .swp files)
- `rm -rf .git` more stuff you don't want mucking up your home folder
- `rm -rf ~/.vim/` or back it up somewhere if you're nervous
- `mv -rf ./* ~/` to put everything in its right place
- Feel free to delete the originally cloned folder: `cd .. && rm -rf vim-setup`

# Tmux

- `brew install tmux`
- install tmux themepack (https://github.com/jimeh/tmux-themepack)
- `tmux -2` should be aliased to 256 color mode for the theme

# Zsh

- `brew install zsh` install zsh
- `chsh -s $(which zsh)` - set zsh as default shell
- install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
- edit ~/.zshrc setting ZSH_THEME="agnoster"


