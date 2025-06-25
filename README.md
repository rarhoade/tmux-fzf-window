## Features
* Switches Tmux windows in a session using fzf via popup

![trimmed_demo](https://github.com/user-attachments/assets/6e2a1c9e-6df6-4a70-8e4c-2e52f8f4a0e3)

## Requirements
* [fzf](https://github.com/junegunn/fzf/)
* [tmux](https://github.com/tmux/tmux/wiki)

## Installation via [TPM](https://github.com/tmux-plugins/tpm)
Add this line to your tmux conf file (either `~/.tmux.conf` or `~/.config/tmux/tmux.conf`)

```tmux
set -g @plugin 'rarhoade/tmux-fzf-window'
```


**Note**: Please use this command to check whether tmux is able to find fzf: 
``` bash
tmux run-shell -b 'command -v fzf'
```

## Usage
By default this will run from using `prefix + f`, and load a window showing the options.
From there you can search windows in your tmux session and hit `Enter` to go to the window you'd like

## Rationale
This is meant to be very lightweight and not have all the functionality of [tmux-fzf](https://github.com/sainnhe/tmux-fzf?tab=readme-ov-file)
as I only really use one tmux session at a time and it sounded like a fun project to do.

## Configuration
```conf
# set window width
set -g @fzf-window-option-width 70
# set window height
set -g @fzf-window-option-height 25
# set execution key
set -g @fzf-window-option-key e
```
