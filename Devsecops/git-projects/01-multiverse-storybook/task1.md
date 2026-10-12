# Project 1: The Multi-Verse Storybook
**Concepts:** `git init`, `git add`, `git commit`, `git log`, `git checkout <hash>`

A commit is a *save point*. You will write a story, then travel back in time and write a different ending.

## Steps
1. Create a folder and start a repo:
   ```
   mkdir storybook && cd storybook
   git init -b main
   ```
2. Create `story.txt` and write the first paragraph of a short story.
3. Save Chapter 1:
   ```
   git add story.txt
   git commit -m "add Chapter 1"
   ```
4. Add a second paragraph where a character makes a choice. Commit it:
   ```
   git add story.txt
   git commit -m "add Chapter 2"
   ```
5. **The Twist.** Find Chapter 1's hash and travel back:
   ```
   git log --oneline
   git checkout <hash-of-chapter-1>
   ```
   Open `story.txt`: Chapter 2 is gone! Write a completely different Chapter 2.
6. Save your alternate timeline on a branch so it isn't lost:
   ```
   git switch -c alt-ending
   git add story.txt
   git commit -m "add alternate Chapter 2"
   ```
7. View every timeline:
   ```
   git log --oneline --graph --all
   ```
8. Return to the original ending with `git switch main`.

## Reflect
- What did `git checkout <hash>` do to your file?
- Why did we create `alt-ending` before committing?
