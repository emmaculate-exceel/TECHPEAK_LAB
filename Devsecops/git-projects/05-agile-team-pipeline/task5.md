# Project 5: The Shared Feature Pipeline (Agile Team)
**Concepts:** `git fetch`, `git pull`, branch tracking, PR review

Work in pairs. **Student A** builds the questions. **Student B** builds the UI and score tracker.
You each own a different file, so you won't overwrite each other.

## Steps
1. **A:** create a new GitHub repo, then add the starter files (`starter/` folder) and push to `main`.
   Settings -> Collaborators -> add **B**. **B** accepts the invite.
2. **Both:** clone the repo.
3. **Create your own feature branch and push it:**
   - A: `git switch -c feature-questions`
   - B: `git switch -c feature-ui`
   - Work in your own file, then:
   ```
   git add . && git commit -m "describe your change"
   git push -u origin <your-branch>     # -u sets branch tracking
   ```
4. **Open a Pull Request** on GitHub for your branch -> `main`.
5. **Peer review** your partner's PR (Files changed -> Review changes). Use the checklist below.
   Request changes if needed, fix and push again, then **Approve**.
6. **Merge** both PRs. Then both run:
   ```
   git switch main
   git fetch          # see what changed (safe, doesn't modify your files)
   git pull           # fetch + merge into your branch
   ```
7. Open `index.html` and play your quiz!

## Review checklist
- [ ] Code does what the PR says
- [ ] Only the owner's file was changed
- [ ] Clear commit messages
- [ ] Runs in the browser with no console errors
- [ ] Friendly, specific comments

Teacher answer key: `solution/`.
