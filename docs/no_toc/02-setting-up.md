# Setting up for this course

<img src="02-setting-up_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g360ed975019_0_188.png" alt="Learning Objectives: Create a repository on GitHub from our template; Clone the repository onto your local computer; Create a branch on your repository for the next assignment" width="100%" />

## Phase 1: Creating Your Repository from Template

You will need to use a template repository on GitHub that we made for this course to have all the necessary pieces.

### Step 1: Access the Course Template

<input type="checkbox"> Go to [github.com](https://github.com/login) and make sure you are logged in<br/>
<input type="checkbox"> Navigate to the [course sandbox template repository](https://github.com/fhdsl/capstone-sandbox)<br/>
<p class = buttontext><input type="checkbox"> Look for the <div class = "github_button"> <a  href="https://github.com/new?template_name=capstone-sandbox&template_owner=fhdsl" class = "github_button_link"> Use this template</a></div> green button at the top of the repository page<br/></p>

::: {.notice}
Important: Do NOT fork the repository - you must use the template option
:::

### Step 2: Configure Your New Repository

<p class = buttontext><input type="checkbox"> Click <div class = "github_button"> <a href="https://github.com/new?template_name=capstone-sandbox&template_owner=fhdsl" class = "github_button_link"> Use this template</a></div> and select the "Create a new repository" option (if needed).<br/></p>
<input type="checkbox"> Fill out the repository creation form:<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"> Include all branches: Leave **unchecked** (we only need the main branch)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"> Owner: Choose an owner (e.g., `your-username`, if needed)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"> Repository name: Choose a meaningful name (e.g., `your-username-capstone-sandbox`)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"> Description: Add a brief description of your capstone project<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"> Visibility: Set to **Public** (required for the automated evaluation system to work)<br/>


### Step 3: Create Your Repository

<input type="checkbox"> Click <div class = "github_button"> Create repository </div><br/>
<input type="checkbox"> Wait for GitHub to finish creating your repository and verify completion <br/>
&nbsp;&nbsp;&nbsp;&nbsp; • Note: You'll be redirected to your new repository page<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"> Verify: The repository should show your username as the owner and contain all the template files<br/>

## Phase 2: Local Setup and Cloning

For this course you may use whatever git client (GitHub Desktop, GitKraken, etc) you are most comfortable with, or no git client at all.
If you need a recap on how to file pull requests remember you can return to the other courses in this series for reference, particularly the [Advanced Reproducibility course](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/no_toc/using-version-control-with-github.html#start-a-github-repository).

### Step 4: Clone Your Repository

**Option A: Using GitHub Desktop**

<input type="checkbox"> Open GitHub Desktop <br/>
<input type="checkbox"> Click "Clone a repository from the Internet" <br/>
<input type="checkbox"> Select your repository from the list or paste the URL you copied <br/>
<input type="checkbox"> Choose a local path where you want to store the repository <br/>
<input type="checkbox"> Click "Clone" <br/>

<div class="click_to_expand_block">

<details><summary>**Option B: Using a command-line interface**</summary>

Alternatively, you can use a command-line interface (e.g., Command Prompt, PowerShell, the Command Line) rather than GitHub Desktop. If you need to install Git, GitHub provides a [guide for various platforms](https://github.com/git-guides/install-git). Instructions within these command-line interface sections will be using "bash".

1. Copy the repository URL:<br/>
    <p class = buttontext><input type="checkbox"> On your repository page, click the <span class = "github_button"> Code </span> green button <br/></p>
    <input type="checkbox"> Copy the HTTPS URL (should look like: `https://github.com/yourusername/your-repo-name.git`) <br/>

2. Clone the repository, using the HTTPS URL you've just copied:
   ```bash
   # Navigate to where you want to store the project
   cd ~/Desktop  # or your preferred location

   # Clone the repository
   git clone https://github.com/yourusername/your-repo-name.git

   # Navigate into the repository
   cd your-repo-name
   ```
</details>

</div>

## Phase 3: Branch Creation and Workflow

### Step 5: Create Your Branch for the Docker Assignment

You may name your working branch whatever you like for each assignment. The examples/instructions use the name `docker-assignment` for the first example.

**Option A: Using GitHub Desktop**

<input type="checkbox"> Click on the "Current branch" dropdown (shows "main") <br/>
<input type="checkbox"> Click "New branch" <br/>
<input type="checkbox"> Name your branch: `docker-assignment` <br/>
<input type="checkbox"> Click "Create branch" <br/>

<div class="click_to_expand_block">

<details><summary>**Option B: Using a command-line interface**</summary>

```bash
# Create and switch to a new branch for the docker assignment
git checkout -b docker-assignment

# Verify you're on the new branch
git branch
# The asterisk (*) should be next to "docker-assignment"
```
</details>

</div>

## Phase 4: Completion

### Step 6: Collect a workflow URL

<input type="checkbox"> Navigate to [github.com](https://github.com/), specifically your repository/copy of the capstone sandbox.<br/>
<input type="checkbox"> Navigate to the `.github/workflows` directory.<br/>
<input type="checkbox"> Click on **one** of the workflow files that are present there.<br/>
<input type="checkbox"> Copy the URL from your web browser for this workflow file.<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; • The URL will look like: `https://github.com/your-username/your-repository-name/blob/main(or-your-branch)/.github/workflows/file_name.yml`<br/>

::: {.certificate}

If you are taking the course on Coursera:

**Submit your Coursera Quiz**

<input type="checkbox"> Go to your Coursera Graded Assignment ("Setting Up").<br/>
<input type="checkbox"> Paste the URL you copied in Step 6.<br/>
<input type="checkbox"> Submit the quiz to get credit for your work.<br/>

<div class = 'iconstyle'>icons from [icons8](https://icons8.com/) </div>
:::

## Your Setup is Complete.... What are the Next Steps?

This setup process creates the foundation for the Docker and GitHub Action capstone assignments, which will follow a similar pattern:

Create a branch → Make changes → Commit changes → Push to GitHub → Open a PR → Receive evaluation (→ iterate if needed).

<img src="02-setting-up_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g368818bb4f3_0_353.png" alt="For each assignment, create a new branch. Then make edits to accomplish the task of the assignment. Optionally you may be able to test those edits locally (e.g., building a docker image locally). Git commit and push those edits and open a pull request (or check an existing pull request) to receive evaluation from automated assignment checks. Interpret the results. If you were not successful, troubleshoot and iterate this process as needed, checking your pre-existing pull request for new evaluation results after making additional changes. Or if you were successful in your assignment, submit the verification code to your coursera quiz (or move on to the next section if you are not using coursera or some certification method to take this course)" width="100%" />

The automated evaluation system depends on this workflow, so following these steps precisely is crucial for getting your validation codes!

Note that the validation codes are really only needed if you are participating in this capstone as a part of the Coursera or Leanpub platforms (for certification). If you are not taking this course for certification, there is no structure in place to verify the validation code you receive.


### Reminders of Best Practices for Success while Working with GitHub

- Use one branch per assignment - keeps work organized
- Write [descriptive commit messages](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt--mmsg) - helps track your progress
- Regularly push your work - protects your work and enables evaluation
- Use clear titles and descriptions for pull requests - will help you and your collaborators know what the work in the branch is
- Don't merge your pull request before you get the validation code - outside of this assignment, wait for approval from a team member or collaborator
- Monitor automated feedback - respond to or handle issues identified by evaluation promptly

## Troubleshooting Common Issues

### "Repository not found" when cloning:

<input type="checkbox"> Check that the repository is public <br/>
<input type="checkbox"> Verify the URL you've copy/pasted is correct <br/>
<input type="checkbox"> Ensure you have access to the repository <br/>

### "Permission denied" when pushing:

<input type="checkbox"> Check that you're pushing to your own repository (not the template) <br/>
<input type="checkbox"> Verify your Git credentials are set up correctly <br/>
<input type="checkbox"> Try using a personal access token instead of password <br/>

### Automated evaluation not running:

<input type="checkbox"> Ensure your pull request is against the main branch <br/>
<input type="checkbox"> Check that required files are in the correct locations <br/>
<input type="checkbox"> Verify the repository is public <br/>
