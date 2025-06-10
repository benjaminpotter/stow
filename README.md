
## Linux Configuration Files
A remote copy of my Linux configuration files. Each file is symlink'd into place
using GNU Stow. Each top-level directory represents configuration for a 
single application. In order to load the configuration for that application you 
invoke `stow` passing the name of the top-level directory. This allows you to 
select _which_ configurations you would like to use. For example, to load my 
bashrc into the $HOME directory, I would run the following. 

```
$> cd stow
$> stow --dotfiles bash
```

### Configurations
The following briefly describe what configurations are included in the repository.

#### bash
Default bashrc provided by Fedora Linux.

- Add `cargo` to PATH

#### foot
Foot is a terminal emulator that comes with sway. I have adjusted the 
configuration slightly e.g., increase default font size (8 >> 12).

#### nvim
I have added a few configurations to my init.lua.

- Set tab behaviour
- Use `vim-plug` as plugin manager
- Install gitgutter
- Install rust.vim plugin

#### vim
I like using vim over nvim at the moment. The configuration files are simpler than writing Lua.

- Add vim-plug as plugin manager
- Add rust-lang/rust.vim to format rust code on save.

#### sway
Sway is a window manager which aims to replicate the i3 experience on Wayland.
Most of my configuration remains default, but I have added a few things. Most
importantly, I use [waybar](#waybar). Other than that, I think it's basically
just modifications to things like `gaps inner 5`.

- Use waybar
- Mouse pointer speed
- Make capslock be escape
- Add gaps

> [!NOTE]
> Sway uses the `dmenu` package for easy access to GUI applications.
> Install via `sudo dnf install dmenu` on Fedora.

#### waybar
Waybar is a third-party extension to sway. It is a command-line instruction
that is invoked by the sway manager during `bar` draws. In my sway config,
this happens at `bar swaybar_command waybar` or something. I prefer a
drastically simplified status bar, so my waybar configuration reflects that.

 - Add battery, with current status indicator (^, v, -)
 - Add network
 - Add date and time
 - Add volume
 - Add CPU usage

#### xdg
I like using lowercase directory names. This clashes with the default 
xdg-user-dir directory names. This configuration changes all of
the default directories to use lowercase. It also disables the execution
of xdg-user-dir-update at login. This prevents my user configuration from
being overwritten by /etc/xdg/user-dirs.dirs at each new login session.

