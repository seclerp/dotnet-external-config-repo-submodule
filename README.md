## Dedicated local configuration repository (PoC)

### Description

The goal of this repo is to play a local configuration files satelite role for main repo. Place new or update existing configuration files here.

### Hot to use in main repo

1. Add this repository as a submodule for a main repo:
    - `git submodule add <path-to-this-repo> app-settings`
1. Execute update script to actualize your configuration:
    - Windows (Batch) script: `app-settings/update-windows.bat`
    - Unix (Bash) script: `app-settings/update-unix.sh`
1. You should see somnething like that in the terminal:
    ```
    $app-settings> .\update-windows.bat
    Updaing submodule...
    Replacing configs...
    Done.
    ```
1. Your configs were replaced by new ones. Make sure that all of them are .gitignored in main repo.

### How to create/update configs

Just place new configs or update existing ones in `content` directory. Make sure that your `content` directory reflects structure of main repo. It should be the same.

After configs were updated, you could run `update-windows.bat` or `update-unix.sh` script in main repo to self-update this submodule and copy updated configs.
