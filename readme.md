# Terminal setup

- use iTerm (https://iterm2.com)
- use the Molokai color scheme (http://iterm2colorschemes.com)
- Preferences > Profiles > Keys > Left Option Key acts as +Esc

## Pretty colors
- at least set Cursor color to #fe40ff - grey sucks

to match the rest of my colors:
- normal yellow to #ed8e1e
- bright blue to #af81ff
- bright magenta to #f92a72

- download and install the font Meslo LG S Regular for Powerline (https://github.com/powerline/fonts/tree/master/Meslo%20Slashed) and set up your terminal to use it

# Vim and other configs

- `git clone https://github.com/ericharm/vim-setup.git`
- `cd vim-setup`
- `shopt -s dotglob` - so the mv command will move hidden files
- `rm .gitignore readme.md` - otherwise you'll overwrite your system-wide .gitignore file (mine is set to ignore .DS_Store and .swp files)
- `rm -rf .git` - more stuff you don't want mucking up your home folder
- `rm -rf ~/.vim/` - or back it up somewhere if you're nervous
- `mv -rf ./* ~/` - to put everything in its right place
- feel free to delete the originally cloned folder: `cd .. && rm -rf vim-setup`
- you'll need pathogen (https://github.com/tpope/vim-pathogen)
- manually install airline for vim: `git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline`
- I use vim 8.0 which I installed via homebrew, for no reason other than
getting the + buffer so I can copy to my Mac's clipboard

# Tmux

- `brew install tmux`
- install tmux themepack (https://github.com/jimeh/tmux-themepack)
- `tmux -2` should be aliased to 256 color mode for the theme
- if you get errors about ~/.tmux.conf it's probably related to different mouse commands in your version of tmux

# Zsh

- `brew install zsh` - install zsh
- `chsh -s $(which zsh)` - set zsh as default shell
- install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
- change the line `export ZSH=/Users/ericharm/.oh-my-zsh` in .zshrc to point to your own home directory.
- in ~/.zshrc set `ZSH_THEME="agnoster"`
- edit ~/.oh-my-zsh/themes/agnoster.zsh-theme, removing the context line from build_prompt at the bottom, and modifying the prompt_dir function thusly:
```
prompt_dir() {
  prompt_segment blue black '%1~'
}
```
- you might have to restart your machine to get zsh to load instead of bash by default

# Key takeaways

## Zsh
- My only real mod is to change the way the agnoster prompt looks a little bit, just to make it shorter

## Tmux
- Alt+a gives you a vertical split, Alt+Shift+a gives you a horizontal split
- Alt+Shift+Arrow keys to resize your splits
- Alt+Arrow keys to navigate between splits
- Shift+Left/Right changes windows

## Vim

### Plugins
- acp + supertab in my opinion is better than YCM
- ctrlp, ctrlsf, nerdcommenter and emmet basically add my most missed features from Sublime Text
- I try to adhere to the creeds of jshint in my own projects
- I used to dig on tslime but when the terminal is just Alt+right_arrow I find it less useful

### Key bindings
- resize panes with Alt+h/j/k/l
- `qq` is an alias for the escape key, same motion but much closer and has only burned me when copying big hashes and just now when I tried to type it into this readme (just switch to paste mode)
- Alt+/ for comments
- Alt+t to open the current directory in a new tab
- Tab and Shift-Tab to move through ... tabs
- Alt-Shift-f shortcut to fuzzy search

### Other
- I like to know if supposedly blank lines are actually full of spaces, or if there are trailing spaces at the end of actual code statements
- I prefer spaces to tabs
- I like to indent 2 spaces by default in .rb files and 4 everywhere else. See: ftplugin/ruby.vim
- I like bright colors

## Terminal environment overall
- everything is powerlined to hell, this appeals to me, while you may think it's tasteless
- can do most of this stuff on a remote server
- run in full screen mode at all times for maximum power

