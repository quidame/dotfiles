# dotfiles

Awesome *dotfiles* sharing the **Cyanellow** color theme, and *Ansible* role
and playbook to deploy them.

## Description

### theming

The purpose of these dotfiles is to provide the same *look and feel* to my
terminal-based toolbox. For examples:

- **MC**'s `filehighlight.ini` and its `cyanellow` skins, and also `.dircolors`
  make that directory contents are displayed with the same colors in `mc` than
  with `ls --color`.

- **Vim**'s `netrw` directory contents become closer to `ls --color` output
  too, even if not so fine-grained.

- **GNU Screen** and **Tmux** statuslines look very close, except for the
  brightness, that is intentionally *dimmed* in *tmux* to get a pretty effect
  when running *screen* over *tmux*.

- **Screen** and **Tmux** window titles are consistent too, showing the name
  of the program running in the window. This is achieved by sending them the
  proper escape sequences from **Bash**.

- **Aplitude UI** and **MC** use a similar colorscheme for their frames and
  dropdown menus.

These files have been built to work on both

- **Debian** 9 systems (local and remote)
- **Redhat** 7 systems (remote, accessed from Cygwin)
- **Cygwin** environment (local)

Initially targetting *Debian*, they've been adapted to provide me the same
productive environment on corporate Windows 10 clients to admin RHEL7 servers
than on Debian clients to admin Debian servers.

### deployment

As the dotfiles stand in the same directory, they could be deployed on a single
host with a command as simple as `rsync` or `scp`, and this would be done. But
to deploy only a subset of these dotfiles on several dozens of servers, it will
be very compliacted to not reinvent the wheel.

Apart the ones shipped with the dotfiles themselves, this ansible role provides
the following features:

- tag-controlled deployment of sets or subsets of dotfiles
- ablitity to restore default dotfiles from host's home skeleton

Examples:

```
ansible-playbook dotfiles.yml --tags debian
```
will install settings for *bash*, *vim*, *screen*, *tmux* and *mc* (which have
their own tags too), and also *aptitude*.

```
ansible-playbook dotfiles.yml -t required -e force_update=yes
```
will install settings for *bash*, *vim*, *screen*, overwritting existing files.

```
ansible-playbook dotfiles.yml -t restore
```
will restore dotfiles from skeleton and remove all other dotfiles supported by
the role.


## Requirements

The `jmespath` python module must be installed on the ansible controller.


## Role Variables

```yaml
dotfiles__skeleton_path: /etc/skel
dotfiles__force_update: "{{ force_update | default(False) }}"
```

The following per-application variables are supported:
```
dotfiles__list_bash
dotfiles__list_mc
dotfiles__list_screen
dotfiles__list_tmux
dotfiles__list_vim
```

The following per-environment variables are supported:
```
dotfiles__list_cygwin
dotfiles__list_debian
dotfiles__list_redhat
```


## Dependencies

None.


## Example Playbook

```yaml
---
- hosts: all
  roles:
    - role: dotfiles
      force_update: yes
```


## License

GPLv3+

## Author Information

<quidame@poivron.org>
