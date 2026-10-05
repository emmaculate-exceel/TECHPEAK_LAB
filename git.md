# Git Project

## The Multi-Verse Storybook (The "Sandbox" Project)

#### Target Concepts: git init, git add, git commit, git log, git checkout <hash>

- Academic Justification: Students need to understand the concept of a "save point" (commit) and navigation through history before dealing with branches or remote repositories. Using plain text files eliminates coding anxiety.

### Execution Stops:

1. Have students create a new local directory and run git init.
2. Instruct them to create a text file called story.txt and write the first paragraph of a short story.
3. Stage and commit the file (git add, git commit -m 'add Chapter 1')
4. Have tem write a second paragraph where a character makes a choice, and commit it as Chapter 2.
5. The Twist: Instruct them to use git checkout <hash> to travel back in time chapter 1 and write a completely different alternative Chapter 2.

6. Use git log --inline to view their timeline history .

## The Collaborative Recipe Book ( The "Fork & Pull" Workflow)

- Target Concepts: git clone, Forking, Pull Requests (PRs), Upstream Remotes.

- Academic Justification: This teaches Student how open-source contribution works on platforms like Github. it introduces the concept of a central repository that they do now own but can contribute to safely .

### Execution Steps 

1. Teachers Setup: Create a public Github repository called "Class-Recipe-Book" containing in single README.md and an empty folder called recipes.
2. Instruct each student to Fork your repo .
3. then clone the forked repo
4. inside the recipes folder, they must create a unique markdown file (food.md) with their favorite recipe.
5. They stage, commit, and git push the changes to their fork
6. Finally, students navigate to Github and open a Pull Request from their fork back to your original repository. you can review and merge them live in class.

## The Feature-Branch Sandbox (The "Feature" Workflow)

- Target Concept: git branch, git merge, Feature isolation, Git graphs.
- Academic Justification: In the industry, developers rarely commit directly to the main branch. This assignment forces students to compartimentalize their code updates using local branching strategy. 

### Execution Steps 

1. Provide students with the basic, functional starter project (like a simle HTML/CSS page)
2. Instruct them to create a new branch called feature-style (git branch feature-style or git checkout -b feature-style). On this branch, they must change the colors or layout, then commit the changes.

3. Switch back to the main branch. Note how the style changes disappear.
4. Create a second branch called feature-text. On this branch, change the wording of the website headers then commit .

5. Switch back main, and execute a git merge feature-style and a git merge feature-text to safely integrate both features into the main line.

## Simulated Trainwreck (The "Merge Conflict" Lab)
- Target Concepts: Merge Conflict resolution, git diff, Manual Code triage.
- Academic Justification: Merge conflicts terrifys beginners. by forcing a conflict in a controlled environment, students Demystify the <<<<<<< HEAD markers and learn to resolves disputes systemmatically.

### Execution Steps:

1. Students start on the main branch of an existing text or code file.
2. On the line 5 of the file, have them write "today is a sunny day". and commit it to main .
3. create a branch called rainy-day, Switch to it, change line 5 to "today is a rainy day.", and commit .
4. Switch back to main. Change linie 5 to read: today is a snowy day. and commit.
5. Attempt to run git merge rainy-day from the main branch.
6. Git will halt and flag a conflict. Instruct students to open the file in their text editor, analyze the conflict markers, manually choose which weather condition wins (or combine them), remove the syntax marks, and finalize the merge with the fresh commit .

## The Shared Feature Pipeline (The "Agile Team" Project)
- Target Concepts: git pull, git fetch, branch tracking, collaborative coordination.
- Academic Justification: This simulates real-world agile engineering environments. students work in pair or trios on the exact same repository without overriding each others work.

### Executive Steps:

1. Pair students up. Student A creates a repository on GitHub and adds Student B as a collaborator in the settings.
2. Both students clone the repository locally
3. Assign a project with distinct components (eg. a sample quiz app where student a builds the questions array and student B builds the user interface score tracker) 
4. they must create individual remote feature branches .
5. to finish they must push their branches to github, open PRs, peer-review each other's code , request changes if neccessary, approve the PRs, and use git pull to synchronize their final codebases.
