#!/usr/bin/env bash
# check-updates.sh - Universal update counter for Waybar (Arch Linux & Debian)

count=0

if command -v checkupdates &>/dev/null; then
    arch_count=$(checkupdates 2>/dev/null | wc -l)
    if [ -n "$arch_count" ] && [ "$arch_count" -gt 0 ]; then
        count=$arch_count
    fi
elif command -v pacman &>/dev/null; then
    arch_count=$(pacman -Qu 2>/dev/null | wc -l)
    if [ -n "$arch_count" ] && [ "$arch_count" -gt 0 ]; then
        count=$arch_count
    fi
elif command -v apt-get &>/dev/null; then
    deb_count=$(apt-get -s upgrade 2>/dev/null | grep -E '^[0-9]+ upgraded' | awk '{print $1}')
    if [ -n "$deb_count" ]; then
        count=$deb_count
    fi
fi

echo "${count:-0}"
