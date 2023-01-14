img=/tmp/i3lock.png
scrot -o $img
convert $img -blur 0x6 $img
i3lock -i $img
