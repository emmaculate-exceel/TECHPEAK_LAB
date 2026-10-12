#!/usr/bin/env bash
# Creates ./conflict-lab with a 10-line weather.txt committed on main
set -e
rm -rf conflict-lab && mkdir conflict-lab && cd conflict-lab
git init -q -b main
git config user.name >/dev/null || git config user.name "Student"
git config user.email >/dev/null || git config user.email "student@example.com"
printf "Weather Diary\n=============\nDay 1 notes\n-----------\nline 5 placeholder\nTemperature: unknown\nWind: unknown\nHumidity: unknown\n-----------\nEnd of diary\n" > weather.txt
git add . && git commit -qm "start weather diary"
echo "Ready: cd conflict-lab"
