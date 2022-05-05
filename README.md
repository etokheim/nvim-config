# How to:
There are two ways to go. Configure manually or using the automated script. The automated script will compile and install the latest version of neovim, configure it and install plugins.

**The manual alternative will currently install an old version of neovim. > 0.6 is required! Use the script, or another package manager.**

## Automatic install
Open the [Auto build and install neovim](https://github.com/etokheim/auto-build-and-install-neovim) repository and follow the instructions.

## Manual install
1. Install neovim: `sudo apt install neovim`
2. Install [vim-plug](https://github.com/junegunn/vim-plug)
3. Create the required folder structure: `mkdir ~/.config`
4. Navigate to the new folder
5. Clone this repository and rename the folder to `nvim`
   - Configuration file should be saved at `~/.config/nvim/init.vim`
6. Open neovim: `nvim`
7. Ignore errors and install plugins: `:PlugInstall`

