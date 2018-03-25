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

- **MC**'s `filehighlight.ini` and its *cyanellow* skins make that directory
  contents are displayed with the same colors than the output of `ls --color`,
  and the frames and regular files don't share the same color.

- **Vim**'s `netrw` directory contents become closer to `ls --color` output
  too, even if not so fine-grained (directories in blue, symlinks in bright
  cyan, executables in bright green, other files as regular files).

- **GNU Screen** and **Tmux** statuslines look very close, except for the
  brightness, that is intentional (adding a *dim* attribute to *tmux* colors
  gives a pretty effect when running screen over tmux).

- **Screen** and **Tmux** window titles are consistent too, showing the name
  of the program running in the window. This is achieved with a *tmux* parameter
  or with proper escape sequences sent to *screen* from *bash*.

