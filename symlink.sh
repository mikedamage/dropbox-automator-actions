# Shell script for "Symlink to Dropbox" Automator action
# by Mike Green
# Copyright (C) 2009, Mike Green
# GNU General Public License

for f in "$@"
do
	ssh fifthroom@dunder.local "ln -s \"$f\" /Users/fifthroom/.dropbox-alt/Dropbox/`basename \"$f\"`"
	osascript -e "tell application \"Finder\" to display dialog \"Symlink to `basename \"$f\"` created successfully\""
done