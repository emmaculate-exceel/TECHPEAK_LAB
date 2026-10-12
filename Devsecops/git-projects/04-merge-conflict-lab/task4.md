# Project 4: Simulated Trainwreck (Merge Conflict Lab)
**Concepts:** merge conflicts, `git diff`, manual resolution

Conflicts are normal, not scary. Let's cause one on purpose.

## Setup
```
bash setup.sh
cd conflict-lab
```

## Steps
1. On `main`, change **line 5** of `weather.txt` to `today is a sunny day`. Commit.
2. `git switch -c rainy-day`, change line 5 to `today is a rainy day`. Commit.
3. `git switch main`, change line 5 to `today is a snowy day`. Commit.
4. Run `git merge rainy-day`. Git stops and reports a **CONFLICT**.
5. Check state with `git status` and `git diff`. Open `weather.txt`:
   ```
   <<<<<<< HEAD
   today is a snowy day
   =======
   today is a rainy day
   >>>>>>> rainy-day
   ```
   - Above `=======` is **your current branch** (main).
   - Below is **the branch being merged** (rainy-day).
6. Edit the file: keep one, or combine them. **Delete all three marker lines.**
7. Finish:
   ```
   git add weather.txt
   git commit
   ```
8. `git log --oneline --graph --all`

## Checklist
- [ ] No `<<<<<<<`, `=======`, or `>>>>>>>` left in the file
- [ ] The line reads sensibly
- [ ] You ran `git add` before committing

Panic button: `git merge --abort` returns you to before the merge.
