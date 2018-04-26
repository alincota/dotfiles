#!/bin/bash

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Listing directories
alias ll="ls -lah"

# Date & time
alias weekno="date +%V"

# Transmission
alias t-start='sudo service transmission-daemon start'
alias t-stop='sudo service transmission-daemon stop'
alias t-reload='sudo service transmission-daemon reload'
# IMPORTANT: change from default credentials (for now)
# TODO: move credentials to .extra and/or convert to simple functions for more logic
alias t-list='transmission-remote -n 'transmission:transmission' -l'
alias t-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias t-fullstats='transmission-remote -n 'transmission:transmission' -si'
