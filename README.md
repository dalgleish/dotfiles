# Dotfiles

Adapted from [driesvints](https://github.com/driesvints/dotfiles)

https://driesvints.com/blog/getting-started-with-dotfiles

## Pre-Wipe Checklist

- Did you commit and push any changes/branches to your git repositories?
- Did you remember to save all important documents from non-iCloud directories?
- Did you save all of your work from apps which aren't synced through iCloud?
- Did you remember to export important data from your local database?
- Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?

## Clean macOS

1. Install macOS Command Line Tools by running `xcode-select --install`
2. [Generate a new public and private SSH key](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and add them to Github
3. Clone this repo to `~/.dotfiles`
4. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
5. Run `fresh.sh` to start the installation
6. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
7. Restart


## Edit Dotfiles

Go through the [`.macos`](./.macos) file and adjust the settings to your liking. You can find much more settings at [the original script by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) and [Kevin Suttle's macOS Defaults project](https://github.com/kevinSuttle/MacOS-Defaults).

[`Brewfile`](./Brewfile) file and adjust the apps you want to install for your machine. Use [their search page](https://caskroom.github.io/search) to check if the app you want to install is available.

Check out the [`aliases.zsh`](./aliases.zsh) file and add your own aliases.

If you need to tweak your `$PATH` check out the [`path.zsh`](./path.zsh) file.

These files get loaded in because the `$ZSH_CUSTOM` setting points to the `.dotfiles` directory. 

More info about how to customize Oh My Zsh can be found [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization).

When installing these dotfiles for the first time you'll need to backup all of your settings with Mackup. Install Mackup and backup your settings with the commands below. Your settings will be synced to iCloud so you can use them to sync between computers and reinstall them when reinstalling your Mac. If you want to save your settings to a different directory or different storage than iCloud, [checkout the documentation](https://github.com/lra/mackup/blob/master/doc/README.md#storage). Also make sure your `.zshrc` file is symlinked from your dotfiles repo to your home directory. 

```zsh
brew install mackup
mackup backup
```

## Inspiration

[Github does dotfiles](https://dotfiles.github.io/)
[Zach Holman](https://github.com/holman/dotfiles)
[Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
[Sourabh Bajaj](https://twitter.com/sb2nov/)'s [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/)
[@subnixr](https://github.com/subnixr) for [his awesome Zsh theme](https://github.com/subnixr/minimal)!
[Emma Fabre](https://twitter.com/anahkiasen) for [her excellent presentation on Homebrew](https://speakerdeck.com/anahkiasen/a-storm-homebrewin) which made me migrate a lot to a [`Brewfile`](./Brewfile) and [Mackup](https://github.com/lra/mackup).
