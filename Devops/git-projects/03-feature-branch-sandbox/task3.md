# Project 3: The Feature-Branch Sandbox
**Concepts:** `git branch`, `git merge`, feature isolation, git graphs

Professional developers rarely commit straight to `main`. They build each change on its own branch.

## Setup
```
bash setup.sh
cd cafe-site
```
Open `index.html` in a browser to see the starting page.

## Steps
1. Create a branch and switch to it:
   ```
   git switch -c feature-style
   ```
   (or `git branch feature-style` then `git checkout feature-style`)
2. Edit **only `style.css`**: change colors or layout. Refresh the browser. Commit:
   ```
   git commit -am "restyle colors"
   ```
3. Switch back: `git switch main`. Refresh the browser: your style changes vanished!
4. Create `feature-text` **from main**, edit **only the headers in `index.html`**, and commit.
5. Back on `main`, merge both features:
   ```
   git merge feature-style
   git merge feature-text
   ```
6. See your history: `git log --oneline --graph --all`

## Reflect
- Why was there no conflict when merging?
- What would happen if both branches had edited the same line? (Next project!)
