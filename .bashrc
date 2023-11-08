# Load the shell dotfiles, and then some:
# for file in ~/.{aliases,functions,exports,secrets}; do
for file in ~/.{aliases,functions,exports,secrets}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Update paths
if [ -f '/Users/ana.luiza/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/ana.luiza/Downloads/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/Users/ana.luiza/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/ana.luiza/Downloads/google-cloud-sdk/completion.bash.inc'; fi

archey
echo "༼ つ ◕_◕ ༽つ Bem vinda Ana Linda <3"
