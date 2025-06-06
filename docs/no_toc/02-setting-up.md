# Setting up for this course

## Phase 1: Creating Your Repository from Template

### Step 1: Access the Course Template
- Navigate to the [course sandbox template repository](https://github.com/fhdsl/capstone-sandbox)
- Look for the green "Use this template" button at the top of the repository page
- Important: Do NOT fork the repository - you must use the template option

### Step 2: Configure Your New Repository
- Click "Use this template" → "Create a new repository"
- Fill out the repository creation form:
  - Repository name: Choose a meaningful name (e.g., `your-username-capstone-sandbox`)
  - Description: Add a brief description of your capstone project
  - Visibility: Set to Public (required for the automated evaluation system to work)
  - Include all branches: Leave unchecked (we only need the main branch)

### Step 3: Create Your Repository
- Click "Create repository" 
- Wait for GitHub to finish creating your repository
- You'll be redirected to your new repository page
- Verify: The repository should show your username as the owner and contain all the template files

## Phase 2: Local Setup and Cloning

### Step 4: Prepare Your Local Environment
- Ensure you have Git installed on your computer
- Check Git installation: Open terminal/command prompt and run `git --version`
- If Git isn't installed, download it from [git-scm.com](https://git-scm.com/)
- Optional but recommended: Install [GitHub Desktop](https://desktop.github.com/) for a visual interface

### Step 5: Clone Your Repository

#### Option A: Using Command Line
1. Copy the repository URL:
   - On your repository page, click the green "Code" button
   - Copy the HTTPS URL (should look like: `https://github.com/yourusername/your-repo-name.git`)

2. Clone the repository:
   ```bash
   # Navigate to where you want to store the project
   cd ~/Desktop  # or your preferred location
   
   # Clone the repository
   git clone https://github.com/yourusername/your-repo-name.git
   
   # Navigate into the repository
   cd your-repo-name
   ```

#### Option B: Using GitHub Desktop
1. Open GitHub Desktop
2. Click "Clone a repository from the Internet"
3. Select your repository from the list or enter the URL
4. Choose a local path where you want to store the repository
5. Click "Clone"

### Step 6: Verify Your Local Setup
- Check repository contents:
  ```bash
  ls -la
  # You should see the template files and folders
  ```
- Verify Git connection:
  ```bash
  git status
  # Should show "On branch main" and "working tree clean"
  ```

## Phase 3: Branch Creation and Workflow

### Step 7: Create Your First Assignment Branch

#### Command Line Method:
```bash
# Create and switch to a new branch for Assignment 1
git checkout -b assignment-1-dockerfile

# Verify you're on the new branch
git branch
# The asterisk (*) should be next to "assignment-1-dockerfile"
```

#### GitHub Desktop Method:
1. Click on the "Current branch" dropdown (shows "main")
2. Click "New branch"
3. Name your branch: `assignment-1-dockerfile`
4. Click "Create branch"

### Step 8: Understand Branch Naming Strategy
For each assignment, create descriptive branch names. Here are examples: 
- Assignment 1: `assignment-1-dockerfile` or `dockerfile-build`
- Assignment 2: `assignment-2-github-action` or `gha-creation`
- Future work: `feature-data-analysis`, `fix-container-issue`, etc.

## Phase 4: Making Changes and Committing

### Step 9: Make Your Assignment Changes
- Work on your assignment files according to the specific assignment instructions
- For Assignment 1: Edit the `docker/Dockerfile`
- For Assignment 2: Edit and move the `ASSIGNMENT_2.yml` file
- Save your changes in your preferred editor

### Step 10: Stage and Commit Your Changes

#### Command Line Method:
```bash
# Check what files have changed
git status

# Add specific files (recommended)
git add docker/Dockerfile  # for Assignment 1 for example
                                  
# OR add all changes (use carefully)
git add .

# Commit with a descriptive message
git commit -m "Add package installations to Dockerfile for Assignment 1"

# Alternative: Add and commit in one step
git commit -am "Add package installations to Dockerfile for Assignment 1"
```

#### GitHub Desktop Method:
1. Review changed files in the left sidebar
2. Check the boxes next to files you want to include
3. Write a descriptive commit message in the bottom left
4. Click "Commit to assignment-1-dockerfile"

### Step 11: Push Your Branch to GitHub

#### Command Line Method:
```bash
# Push your new branch to GitHub (first time)
git push --set-upstream origin assignment-1-dockerfile

# For subsequent pushes to the same branch
git push
```

#### GitHub Desktop Method:
1. Click "Publish branch" (for first push)
2. For subsequent changes, click "Push origin"

## Phase 5: Opening Pull Requests

### Step 12: Create Your Pull Request
1. Navigate to your repository on GitHub.com
2. You should see a yellow banner saying "assignment-1-dockerfile had recent pushes" with a "Compare & pull request" button
3. Click "Compare & pull request"

#### Alternative method if no banner appears:
1. Click the "Pull requests" tab
2. Click "New pull request"
3. Set the base branch to `main` and compare branch to your assignment branch
4. Click "Create pull request"

### Step 13: Configure Your Pull Request
- Title: Use a descriptive title (e.g., "Assignment 1: Docker container with required packages")
- Description: Add details about what you implemented:
  ```
  ## Assignment 1 Submission
  
  This PR adds the following to the Dockerfile:
  - [List the packages you added]
  - [Any other changes you made]
  
  Ready for automated evaluation.
  ```
- Labels: Add any relevant labels if available
- Assignees: Assign yourself

### Step 14: Submit and Monitor Your Pull Request
1. Click "Create pull request"
2. Wait for automated checks to run - you should see status indicators at the bottom of the PR
3. Monitor for the evaluation comment - the automated system will comment with results
4. Keep the PR open until you receive your validation code

## Phase 6: Iteration and Resubmission

### Step 15: Handle Evaluation Feedback
If your submission needs changes:

1. Stay on your assignment branch:
   ```bash
   git checkout assignment-1-dockerfile  # if not already there
   ```

2. Make necessary changes based on the automated feedback

3. Commit and push updates:
   ```bash
   git add .
   git commit -m "Fix Dockerfile syntax based on evaluation feedback"
   git push
   ```

4. The pull request will automatically update and trigger re-evaluation

### Step 16: Success and Next Steps
When you receive your validation code:
1. Copy the validation code from the automated comment
2. Keep your PR open (don't merge or close it yet)
3. Submit the code in your Coursera quiz
4. Start the next assignment by creating a new branch from main

## Reminders of Best Practices for Success

### Repository Organization
- One branch per assignment - keeps work organized
- Descriptive commit messages - helps track your progress
- Regular pushes - protects your work and enables evaluation

### Pull Request Hygiene
- Clear titles and descriptions - will help you and your collaborators know what the work in the branch is. 
- Don't merge your PR before you get the validation code 
- Monitor automated feedback - respond to evaluation comments promptly

### Troubleshooting Common Issues

#### "Repository not found" when cloning:
- Check that the repository is public
- Verify the URL is correct
- Ensure you have access to the repository

#### "Permission denied" when pushing:
- Check that you're pushing to your own repository (not the template)
- Verify your Git credentials are set up correctly
- Try using a personal access token instead of password

#### Automated evaluation not running:
- Ensure your PR is against the main branch
- Check that required files are in the correct locations
- Verify the repository is public

#### Branch confusion:
```bash
# Check current branch
git branch

# Switch to main branch
git checkout main

# Create new branch from main
git checkout -b new-assignment-branch
```

This setup process creates the foundation for all your capstone assignments. 
Each assignment will follow a similar pattern: 
create branch → make changes → commit → push → open PR → receive evaluation → iterate if needed. 
The automated evaluation system depends on this workflow, so following these steps precisely is crucial for getting your validation codes!
