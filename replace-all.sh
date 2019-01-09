#!/usr/bin/env bash

declare -i THEME_EXISTS=0

declare -a THEME_DIRS=(
	"$HOME/.icons/Suru++"
	"$HOME/.local/share/icons/Suru++"
	"/usr/share/icons/Suru++"
	"$HOME/.icons/suru-plus"
	"$HOME/.local/share/icons/suru-plus"
	"/usr/share/icons/suru-plus"
	"$HOME/.icons/suru-plus-master"
	"$HOME/.local/share/icons/suru-plus-master"
	"/usr/share/icons/suru-plus-master"
)

declare -a CONTEXT_DIRS=(
	"apps/16"
	"places/16"
	"mimetypes/16"
)

declare -a COLORS=(
	arrogrin
	telinkrin
	mycenean
	black
	gold
	green
	grey
	orangle
	purple
	red
)

choose_color() {
	local color
	local PS3="(put a number)> "  # set custom prompt
	local COLUMNS=1

	echo "Choose one of these colours:"
	select color in "${COLORS[@]}"; do
		case "${color:-$REPLY}" in
			"$color")
				COLOR="$color"
				break
				;;
			quit|[qQeE]*)
				exit 0
				;;
			*) echo "invalid color -- '$REPLY'" >&2
		esac
	done < /dev/tty  # don't read from stdin
}

change_colour() {
	perl "$COLOR".pl "$1" > "$1.tmp" && mv "$1.tmp" "$1"
}



for theme_dir in "${THEME_DIRS[@]}"; do
	[ -d "$theme_dir" ] || continue
	THEME_EXISTS=1

	for context_dir in "${CONTEXT_DIRS[@]}"; do
		for file_path in "$theme_dir/$context_dir/"*.svg; do
			[ -f "$file_path" ] || continue  # is a file
			[ -L "$file_path" ] && continue  # is not a symlink
			[ -n "$COLOR" ] || choose_color
			change_colour "$file_path"
		done
	done

	exit 0
done

if [ "$THEME_EXISTS" -ne 1 ]; then
	echo "Icons theme Suru++ does not exist! You should rename the icons theme folder to 'suru-plus' or 'Suru++'." >&2
	exit 1
fi
