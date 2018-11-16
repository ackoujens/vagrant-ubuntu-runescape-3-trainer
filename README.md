# vagrant-ubuntu-runescape-3-trainer

## What is this repository for

Creates a VM where you can train your Runescape 3 character.
This while still using your own computer (because it's branched off in a VM) :)

## What image is used

Any debian based image can be used if this one gets out of the air really.

- amplifi/ubuntu-desktop-14.04.minimal

## What is installed

- libglew
- libpng
- runescape-launcher
- xmacro
- some scripts to record and play your own macros
- macros

## How to use

- Enter `vagrant up` in your command line tool
- Open up the Runescape client and log in
- Use XMacro to record your moves
- Launch work.sh to repeat your macro in an endless loop