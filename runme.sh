#!/bin/bash

# xfreerdp optimizations: resizable window, clipboard, attached home folder 
alias xfreerdp='xfreerdp /dynamic-resolution +clipboard /drive:home,$HOME/'

# also add alias to bashrc for future sessions
INJECTION_LINE="\n\nalias xfreerdp='xfreerdp /dynamic-resolution +clipboard /drive:home,$HOME/'\n"

# Check if the line is already in .bashrc
if ! grep -Fxq "$INJECTION_LINE" "$HOME/.bashrc"; then
    echo -e "$INJECTION_LINE" >> "$HOME/.bashrc"
fi

# unzip rockyou wordlist
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz