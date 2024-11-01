#!/usr/bin/env bash

# Current Theme
dir="$HOME/.config/rofi/powermenu"

# CMDs
uptime="`uptime -p | sed -e 's/up //g'`"
host=`hostname`

# Options
shutdown='Shutdown'
reboot='Reboot'
lock='Lock'
suspend='Suspend'
logout='Logout'
yes='Yes'
no='No'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "Power Menu" \
		-mesg "Uptime: $uptime" \
		-dpi 1 \
		-theme ${dir}/style.rasi
}

# Confirmation CMD
confirm_cmd() {
	rofi -dmenu \
		-p 'Confirmation' \
		-mesg 'Are you sure?' \
                -dpi 1 \
		-theme ${dir}/confirm.rasi
}

# Ask for confirmation
confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi_cmd
}

# Execute Command
run_cmd() {
	selected="$(confirm_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--suspend' ]]; then
			mpc -q pause
			amixer set Master mute
			systemctl hybrid-sleep
		elif [[ $1 == '--logout' ]]; then
		        i3-msg exit
		fi
	else
		exit 0
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $lock)
		dm-tool lock
        ;;
    $suspend)
		run_cmd --suspend
        ;;
    $logout)
		run_cmd --logout
        ;;
esac
