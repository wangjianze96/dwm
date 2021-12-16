#!/bin/bash

alsa_stat () {
	VOL1=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\] \[(.*)\] /\1/")
	VOLS=$(echo "$VOL1" | sed -r "s/\[(.*)\] .*/\1/")

	printf "%s\n" "$VOLS"
}

echo "$(alsa_stat)"

exit 0

