# dotfiles
My personal dotfiles. Configurations for bash, git, vim, tmux, etc.

## Install instruction

```
git clone https://github.com/khashf/dotfiles.git && ./dotfiles/install && git submodule update --init --recursive
```

If install script complains conflicts, resolve them, run `./dotfiles/install` again, then run the last command above

## Enable/change terminal & vim colorscheme

On your shell, type `base16_` then press `tab` and type the name of colorscheme you want to try and press `Enter` 


## Some useful information about dotfiles

### Bash startup files

![shell-startup-flow-chart.png](https://shreevatsa.files.wordpress.com/2008/03/bashstartupfiles1.png) 
From: https://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/

Executes A, then B, then C, etc. 
B1, B2, B3 means it executes only the first of those files found.

```
+----------------+-----------+-----------+------|
|                |Interactive|Interactive|Script|
|                |login      |non-login  |      |
+----------------+-----------+-----------+------|
|/etc/profile    |   A       |           |      |
+----------------+-----------+-----------+------+
|/etc/bash.bashrc|           |    A      |      |
+----------------+-----------+-----------+------+
|~/.bashrc       |           |    B      |      |
+----------------+-----------+-----------+------+
|~/.bash_profile |   B1      |           |      |
+----------------+-----------+-----------+------+
|~/.bash_login   |   B2      |           |      |
+----------------+-----------+-----------+------+
|~/.profile      |   B3      |           |      |
+----------------+-----------+-----------+------+
|BASH_ENV        |           |           |  A   |
+----------------+-----------+-----------+------+
|                |           |           |      |
+----------------+-----------+-----------+------+
|                |           |           |      |
+----------------+-----------+-----------+------+
|~/.bash_logout  |    C      |           |      |
+----------------+-----------+-----------+------+
```

### Tips:
* For bash, put stuff in ~/.bashrc, and make ~/.bash_profile source it.
* For zsh, put stuff in ~/.zshrc, which is always executed.

### Small Notes:
* gnome-terminal prompts non-login shell by default
* 


