#!/usr/bin/env bash
# Creates ./cafe-site with the starter project committed on main
set -e
rm -rf cafe-site && cp -r starter cafe-site && cd cafe-site
git init -q -b main
git config user.name >/dev/null || git config user.name "Student"
git config user.email >/dev/null || git config user.email "student@example.com"
git add . && git commit -qm "initial cafe site"
echo "Ready: cd cafe-site"
