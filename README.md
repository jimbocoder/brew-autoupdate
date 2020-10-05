# brew-autoupdate
I am sick of `brew update` slowing me down


## What it does

This MacOS `LaunchAgent` will run `brew update` in the background every 12 hours, so you don't have to wait for `brew install` and other commands to update first.


## Usage

```
make install

launchctl list | grep jimbocoder # you should see jimbocoder.brew-update running

```
