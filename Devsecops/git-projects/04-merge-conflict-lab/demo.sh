#!/usr/bin/env bash
# Reproduces the conflict, then resolves it (teacher reference)
set -e
bash setup.sh >/dev/null; cd conflict-lab
git config user.name Teacher; git config user.email t@example.com
sed -i '5s/.*/today is a sunny day/' weather.txt; git commit -qam "sunny day"
git switch -qc rainy-day
sed -i '5s/.*/today is a rainy day/' weather.txt; git commit -qam "rainy day"
git switch -q main
sed -i '5s/.*/today is a snowy day/' weather.txt; git commit -qam "snowy day"
git merge rainy-day || true
echo "----- conflicted file -----"; sed -n '4,10p' weather.txt
sed -i '5,9c\today is a rainy and snowy day (sleet!)' weather.txt
git add weather.txt && git commit -qm "resolve: sleet"
echo "----- history -----"; git log --oneline --graph --all
