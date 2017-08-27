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
- manually install airline for vim: `git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline`

# Tmux

- `brew install tmux`
- install tmux themepack (https://github.com/jimeh/tmux-themepack)
- `tmux -2` should be aliased to 256 color mode for the theme

# Zsh

- `brew install zsh` install zsh
- `chsh -s $(which zsh)` - set zsh as default shell
- install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
- edit ~/.zshrc setting ZSH_THEME="agnoster"
- edit ~/.oh-my-zsh/themes/agnoster.zsh-theme, removing context from build_prompt at the bottom, and modifying the prompt_dir function thusly:
```
prompt_dir() {
  prompt_segment blue black '%1~'
}
```

# Key takeaways

## Zsh
- My only real mod is to change the way the agnoster prompt looks a little bit, just to make it shorter.

## Tmux
- Alt+a gives you a vertical split, Alt+Shift+a gives you a horizontal split
- Alt+Shift+Arrow keys resizes your splits
- Alt+Arrow keys navigates between splits
- Shift+Left/Right changes windows

## Vim

### Plugins
- acp + supertab kinda rocks.
- ctrlp, ctrlsf, nerdcommenter and emmet basically add my most missed features from sublime text.
- I try to adhere to the creeds of jshint in my own projects.
- I hardly use the other plugins to be honest. In fact I don't use surround or the git plugin at all.
- I used to dig on tslime but when the terminal is just Alt+right_arrow I find it less useful.

### Key bindings
- resize panes with Alt+h/j/k/l.
- `qq` is an alias for the escape key, same motion but much closer and has only burned me when copying big hashes and just now when I tried to type it into this readme.
- Alt+/ for comments.
- Tab and Shift-Tab to move through ... tabs.
- Alt-Shift-f shortcut to fuzzy search.

### Other
- I like to know if supposedly blank lines are actually full of spaces, or if there are trailing spaces at the end of actual code statements.
- I prefer tabs to spaces.
- I like to indent 2 spaces by default in .rb files and 4 everywhere else. See: ftplugin/ruby.vim
- I like bright colors.

## Terminal environment overall
- Everything is powerlined to hell.
- Can do most of this stuff on a remote server.
- It appeals to my personal aesthetic. Run in full screen mode at all times for maximum power.

