# dotfiles

awesome dotfiles sharing the Cyanellow color theme

## description

This skeleton embeds consistent themes and intercompatible settings for:

* bash
* mc
* vim
* screen
* tmux

The purpose is to provide colorschemes and statuslines that make console tools
working fine together. For examples:

- MC's filehighlight.ini and its cyanellow skins make that directory contents
  are displayed with the same colors than the output of 'ls --color', and the
  frames and regular files don't share the same color.

- Vim's netrw directory contents become closer to ls output (directories in
  blue, symlinks in bright cyan, executables in bright green, other files as
  regular files.

- GNU Screen and Tmux statuslines look very close, except for the brightness
  (that is intentional, by adding a dim attribute to tmux colors, and gives a
  pretty effect when running screen over tmux).

- inputrc settings make that bash history search with Up arrow key behaves
  more like in vim history search (for productivity improvement).

