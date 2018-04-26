# Load other dotfiles:
# * path      -> used to extend "$PATH"
# * functions -> used for small repetitive tasks which can fit in small functions
# * extra     -> anything else that doesn't fit in any of the above and/ or should not be caught by a VCS
for file in ~/.{path,functions,extra}; do
	[ -f "$file" ] && [ -r "$file" ] && source "$file";
done;
unset file;