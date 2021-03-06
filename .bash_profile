# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"


# Load other dotfiles:
# * path      -> used to extend "$PATH" (e.g PATH="$HOME/.cargo/bin:$PATH")
# * functions -> used for small repetitive tasks which can fit in small functions
# * extra     -> anything else that doesn't fit in any of the above and/ or should not be caught by a VCS
for file in ~/.{path,functions,extra}; do
	[ -f "$file" ] && [ -r "$file" ] && source "$file";
done;
unset file;
