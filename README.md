# nvim-gamedev
GameDev addons to your NeoVim config.

## Pre-requirements

Requires already existing NeoVim (prefferably with config).

If you are new to NeoVim, a good starting point could be one of the following configs:
  - [LazyVim](https://github.com/LazyVim/LazyVim);
  - [LunarVim](https://github.com/LunarVim/LunarVim);
  - [AstroNvim](https://github.com/AstroNvim/AstroNvim);
  - [Kickstart](https://github.com/nvim-lua/kickstart.nvim).

After NeoVim setup is complete, jump to [Setup](##setup) section.

## Setup
To embrace the full god-like power of NeoVim, it is recommended to setup 
at least [csharp_ls](https://github.com/razzmatazz/csharp-language-server) LSP 
and [netcoredbg](https://github.com/Samsung/netcoredbg) debugger.

### Unity
1. Clone this repo to your existing NeoVim directory.
```
git clone https://github.com/dbobrenko/nvim-gamedev ~/.config/nvim/gamedev
```

#### MacOS X

2. Install `neovim-remote` to be able to open scripts in your existing NeoVim session.
```shell
pip install neovim-remote
# Create a symbolic link to your bin folder, in order to access to `neovim-remote` from Unity Editor.
sudo ln -s `which nvr` /usr/local/bin/nvr
```

3. Install iTerm2.
```shell
brew install --cask iterm2
```

4. Go to `Unity Settings` -> `External Tools`.

5. Set `External Script Editor` to: `$HOME/.config/nvim/gamedev/unity/launcher_mac.sh`.

6. Set `External Script Editor Args` to: `+$(Line) $(File)`

7. Finally, open NeoVim as: `nvim --listen "/tmp/nvimsocket"` and enjoy! For convenience, you can make an `alias nvim=nvim -- listen "/tmp/nvimsocket"`.

## To Do
  - [ ] Unity: Open files from Unity to a new NeoVim session.
  - [x] Unity: Open files from Unity in an existing NeoVim session.
  - [ ] Unity: Attach to debugger process.

