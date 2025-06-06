# Assignment 1: Building Your Capstone Dockerfile

## Phase 1: Repository Setup and Planning

### Step 1: Set Up Your Working Environment
- Clone or navigate to your capstone sandbox repository
- Locate the `docker/Dockerfile` - this is where you'll be working
- Important: Don't change the name or location of this file
- Open the existing Dockerfile to see what's already there

### Step 2: Create Your Working Branch
- Create a new branch for this assignment (e.g., `dockerfile-assignment` or `docker-build`)
- Switch to this branch before making any changes
- This keeps your work organized and allows the automated testing to work properly

### Step 3: Analyze Your Capstone Project Needs
- Look at your capstone project files in the repository
- Identify what programming languages you're using (R, Python, etc.)
- Make a list of packages/libraries your analysis scripts require
- Check if there are any special tools or dependencies needed

## Phase 2: Dockerfile Development

### Step 4: Examine the Base Setup
- Open `docker/Dockerfile` and see what base image is already specified
- Read any existing instructions or comments
- Understand what's already included before adding new components

### Step 5: Add Packages Incrementally
- Start by adding just one or two essential packages to your Dockerfile
- Use the templates from the course:
  - For R packages: `RUN Rscript -e "install.packages('packagename')"`
  - For Python packages: `RUN pip3 install packagename`
- Add comments explaining what each package does

### Step 6: Build Locally (If Working on Your Computer)
- If developing locally, test your Dockerfile with:
  ```
  cd docker
  docker build . -t my-capstone-image
  ```
- Fix any build errors before pushing to GitHub
- This saves time and GitHub Actions usage

## Phase 3: Testing and Iteration

### Step 7: Open Your Pull Request
- Commit your Dockerfile changes to your branch
- Push the branch to GitHub
- Open a pull request from your branch to the main branch
- Key: This triggers the `Docker Assignment Eval` test

### Step 8: Monitor the Automated Testing
- Watch for the `Docker Assignment Eval` check to start running
- This GitHub Action will attempt to build your Dockerfile
- Wait for it to complete and comment on your PR

### Step 9: Interpret the Results
- Success: You'll get a validation code in the comment
- Failure: You'll get error messages explaining what went wrong
- Read the error messages carefully - they contain clues for fixing issues

## Phase 4: Troubleshooting and Refinement

### Step 10: Debug Build Failures
- Common issues to check:
  - Typos in package names
  - Missing dependencies (install system packages before language packages)
  - Incorrect syntax in RUN commands
  - Base image doesn't support your installation method

### Step 11: Apply Troubleshooting Strategies
- Package not found: Check spelling, verify the package exists
- Installation fails: Look for missing system dependencies
- Syntax errors: Review course templates and examples
- Memory issues: Simplify your build, install fewer packages at once

### Step 12: Iterate Until Success
- Make changes to your Dockerfile on your branch
- Commit and push changes
- Each push will trigger a new test run
- Keep refining until you get a successful build

## Phase 5: Completion

### Step 13: Collect Your Validation Code
- Once your build succeeds, copy the validation code from the PR comment
- Important: Make sure it's a real validation code, not an error message
- Keep this code safe - you'll need it for your quiz

### Step 14: Submit Your Quiz
- Go to your Coursera Capstone Quiz
- Paste the validation code when prompted
- Submit the quiz to get credit for your work

## Pro Tips for Success

### Start Simple
- Begin with just the most essential packages for your analysis
- You can always add more in subsequent iterations
- A working simple image is better than a broken complex one

### Use the Course Resources
- Reference the package installation templates from the Containers for Scientists course
- Look for examples of other people installing similar packages
- Don't reinvent the wheel

### Leverage the Automated Testing
- The GitHub Action is your friend - it provides immediate feedback
- Don't be afraid to make multiple attempts
- Each failure teaches you something about container building

### Read Error Messages Carefully
- Error messages often contain the exact solution
- Look for phrases like "package not found" or "missing dependency"
- Google specific error messages if they're unclear

### Document Your Process
- Add comments to your Dockerfile explaining your choices
- This helps you remember your reasoning if you need to modify it later
- Good documentation makes debugging easier

Remember: This assignment is designed to give you hands-on experience with the container building process. The automated testing system provides immediate feedback, making it easier to learn through iteration rather than getting everything perfect on the first try.
