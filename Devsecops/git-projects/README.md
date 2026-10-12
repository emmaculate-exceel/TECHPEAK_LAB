# Git Teaching Projects (5-Project Series)

| # | Project | Concepts | Needs GitHub? |
|---|---------|----------|---------------|
| 1 | Multi-Verse Storybook | init, add, commit, log, checkout | No |
| 2 | Collaborative Recipe Book | fork, clone, push, pull request | Yes |
| 3 | Feature-Branch Sandbox | branch, merge, isolation | No |
| 4 | Merge Conflict Lab | conflicts, diff, resolution | No |
| 5 | Agile Team Pipeline | fetch, pull, tracking, PR review | Yes |

Each folder has a `README.md` (the student handout). Folders 1, 3, 4 include
scripts: `setup.sh` prepares the student environment, `demo.sh` builds a finished
example for teacher reference.

## Corrections made to the original outline
- `git log --inline` is not a valid flag; use **`git log --oneline`** (add `--graph --all` for branches).
- Git does not track empty folders, so `recipes/` contains a `.gitkeep` file.
- After `git checkout <hash>` you are in *detached HEAD*; commits made there are easy to lose.
  Project 1 adds `git switch -c alt-ending` so the alternate Chapter 2 is saved on a branch.
- Project 3: merges are conflict-free only if the two branches touch different files
  (style -> `style.css`, text -> `index.html`). The starter is built that way.

Prerequisite: Git installed and `git config --global user.name/user.email` set.
