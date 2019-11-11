#!/sbin/sh
if
umount /vendor; then
    exit 0
fi

exit 1
