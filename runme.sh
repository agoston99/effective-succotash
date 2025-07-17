#!/bin/bash

# xfreerdp optimizations: resizable window, clipboard, attached home folder 
alias xfreerdp='xfreerdp /dynamic-resolution +clipboard /drive:home,/home/'

# also add alias to bashrc for future sessions
INJECTION_LINE="alias xfreerdp='xfreerdp /dynamic-resolution +clipboard /drive:home,/home/'"

# Check if the line is already in .bashrc
if ! grep -Fxq "$INJECTION_LINE" "$HOME/.bashrc"; then
    echo "$INJECTION_LINE" >> "$HOME/.bashrc"
fi

# unzip rockyou wordlist
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz