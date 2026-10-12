#!/usr/bin/env bash
# Builds a finished example of Project 1 in ./demo-storybook
set -e
rm -rf demo-storybook && mkdir demo-storybook && cd demo-storybook
git init -q -b main
git config user.name "Teacher" && git config user.email "teacher@example.com"
echo "Mira found a glowing door at the back of the library." > story.txt
git add story.txt && git commit -qm "add Chapter 1"
H1=$(git rev-parse --short HEAD)
printf "\nShe opened it and stepped through into a city of clocks.\n" >> story.txt
git add story.txt && git commit -qm "add Chapter 2"
git checkout -q $H1 2>/dev/null
printf "\nShe locked it instead, and the whispers behind it grew louder.\n" >> story.txt
git switch -qc alt-ending
git add story.txt && git commit -qm "add alternate Chapter 2"
git log --oneline --graph --all
