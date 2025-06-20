# Setting up for this course

## Phase 1: Creating Your Repository from Template

<img src="02-setting-up_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g360ed975019_0_188.png" alt="Welcome to Reproducibility Capstone. This course is brought to you by the I T C R Training Network." width="100%" />

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
For this course you may use whatever git client (GitHub Desktop, Git Kraken, etc) you are most comfortable with, or no git client at all. 
If you need any recap on how to file pull requests remember you can return to the other courses in this series for reference. Particularly the [Advanced Reproducibility course](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/using-version-control-with-github.html)

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

## Phase 3: Branch Creation and Workflow

### Step 7: Create Your First Assignment Branch

You may name your working branch whatever you like for these assignments. 

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

This setup process creates the foundation for all your capstone assignments. 
The first two assignment will follow a similar pattern: 
create branch → make changes → commit → push → open PR → receive evaluation → iterate if needed. 
The automated evaluation system depends on this workflow, so following these steps precisely is crucial for getting your validation codes!

Note that the validation codes are really only needed for if you are doing this capstone as a part of the Coursera or Leanpub platforms (for certification). If you are not taking this course for certification you may ignore the validation codes. 

