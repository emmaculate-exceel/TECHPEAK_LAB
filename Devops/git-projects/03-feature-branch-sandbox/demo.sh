#!/usr/bin/env bash
# Runs the whole project and prints the final graph
set -e
bash setup.sh >/dev/null; cd cafe-site
git config user.name Teacher; git config user.email t@example.com
git switch -qc feature-style
sed -i 's/#ffffff/#fff4e6/; s/#dddddd/#c8793a/' style.css
git commit -qam "restyle colors"
git switch -q main
git switch -qc feature-text
sed -i 's/Welcome to My Cafe/Brew and Bite Cafe/; s/Our Menu/What We Serve/' index.html
git commit -qam "reword headers"
git switch -q main
git merge -q feature-style -m "merge feature-style"
git merge -q feature-text -m "merge feature-text"
git log --oneline --graph --all
