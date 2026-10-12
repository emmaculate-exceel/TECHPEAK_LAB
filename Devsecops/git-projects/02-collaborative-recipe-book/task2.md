# Project 2: The Collaborative Recipe Book (Fork & Pull)
**Concepts:** `git clone`, Forking, Pull Requests, Upstream remotes

## Teacher setup (once)
1. Create a **public** GitHub repo named `Class-Recipe-Book`.
2. Upload the contents of the `Class-Recipe-Book/` folder here (README.md, `recipes/.gitkeep`, `RECIPE_TEMPLATE.md`).
   Or: `cd Class-Recipe-Book && git init -b main && git add . && git commit -m "init" && git remote add origin <url> && git push -u origin main`

## Student steps
1. Open the teacher's repo on GitHub and click **Fork**.
2. Clone **your fork**:
   ```
   git clone https://github.com/<your-username>/Class-Recipe-Book.git
   cd Class-Recipe-Book
   ```
3. Copy the template and name it after your food:
   ```
   cp RECIPE_TEMPLATE.md recipes/<food>.md
   ```
   Edit it with your favorite recipe.
4. Commit and push to your fork:
   ```
   git add recipes/<food>.md
   git commit -m "add <food> recipe"
   git push origin main
   ```
5. On GitHub, click **Contribute -> Open pull request** (fork -> teacher's repo).

## Bonus: stay in sync (upstream remote)
```
git remote add upstream https://github.com/<teacher>/Class-Recipe-Book.git
git pull upstream main
```

## Teacher: merge live
Review each PR in the **Files changed** tab, leave a comment, then **Merge**.
Each file has a unique name, so there are no conflicts.
