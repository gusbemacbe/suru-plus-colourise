#!/usr/bin/env bash

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
	"devices/16"
	"places/16"
	"mimetypes/16"
)

declare -A COLORS=(
	[arrongin]="url(#arrongin)"
	[aurora]="url(#aurora)"
	[fitdance]="url(#fitdance)"
	[oomox]="url(#oomox)"
	[rainblue]="url(#rainblue)"
	[sunrise]="url(#sunrise)"
	[telinkrin]="url(#telinkrin)"
	[60spsycho]="url(#60spsycho)"
	[90ssummer]="url(#90ssummer)"
	[default]="currentColor"
)

choose_color() {
	local color
	local PS3="(put a number)> "  # set custom prompt
	local COLUMNS=1

	echo "Choose one of these colours:"
	select color in "${!COLORS[@]}"; do
		case "${color:-$REPLY}" in
			"$color")
				COLOR="${COLORS[$color]}"
				break
				;;
			quit|[qQeE]*)
				exit 0
				;;
			*) echo "Invalid number -- '$REPLY'" >&2
		esac
	done < /dev/tty  # don't read from stdin

	echo "=> Changing to '$color' ..." >&2
}

colors_str="${COLORS[*]}"
regexp="${colors_str// /\\|}"

for theme_dir in "${THEME_DIRS[@]}"; do
	[ -d "$theme_dir" ] || continue

	for context_dir in "${CONTEXT_DIRS[@]}"; do
		for file_path in "$theme_dir/$context_dir/"*.svg; do
			[ -f "$file_path" ] || continue  # is a file
			[ -L "$file_path" ] && continue  # is not a symlink
			[ -n "$COLOR" ] || choose_color

			sed -i "s/$regexp/$COLOR/g" "$file_path"
		done
	done

	echo "=> Done!" >&2
	exit 0
done

echo "Icons theme Suru++ does not exist! You should rename the icons theme folder to 'suru-plus' or 'Suru++'." >&2
exit 1
