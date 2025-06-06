# Assignment 2: Building Your Capstone GitHub Action

## Phase 1: Repository Setup and Planning

### Step 1: Set Up Your Working Environment
- Navigate to your capstone sandbox repository
- Locate the `ASSIGNMENT_2.yml` file - this is your starting template
- Important: Keep the filename exactly as `ASSIGNMENT_2.yml` throughout the assignment
- Review the existing template to understand what's already provided

### Step 2: Create Your Working Branch
- Create a new branch for this assignment (e.g., `github-action-assignment` or `gha-build`)
- Switch to this branch before making any changes
- This isolates your work and enables the automated evaluation system

### Step 3: Plan Your GitHub Action
- Decide what useful task your GitHub Action will perform
- Ideas for useful actions:
  - Run automated tests on your capstone code
  - Generate reports or documentation
  - Check code quality or formatting
  - Create data visualizations
  - Send notifications when certain conditions are met
  - Validate data files or configurations

## Phase 2: GitHub Action Development

### Step 4: Understand the Template Structure
- Open `ASSIGNMENT_2.yml` and examine the existing structure
- Identify the key components:
  - `name:` - What your action is called
  - `on:` - When it should trigger
  - `jobs:` - What it should do
  - `runs-on:` - What environment to use

### Step 5: Move File to Correct Location
- GitHub Actions must be in the `.github/workflows/` directory
- Move `ASSIGNMENT_2.yml` to `.github/workflows/ASSIGNMENT_2.yml`
- Critical: The file must be in this exact location for GitHub to recognize it

### Step 6: Define Your Action's Purpose
- Choose a meaningful trigger (`on:`):
  - `pull_request:` - Runs when PRs are opened/updated (good for testing)
  - `push:` - Runs when code is pushed to specific branches
  - `workflow_dispatch:` - Allows manual triggering (useful for development)
  - `schedule:` - Runs on a time schedule

- Design your job steps:
  - Start with `actions/checkout@v4` to get your repository files
  - Add steps that accomplish your chosen task
  - Include error handling and status checks

## Phase 3: Implementation Strategies

### Step 7: Start Simple and Build Up
- Begin with a basic action that you know will work
- Test early and often to catch issues quickly
- Add complexity gradually, testing each addition

### Step 8: Use Course Knowledge
- Apply containers knowledge:
  - Choose appropriate `runs-on:` environment
  - Consider using Docker containers if you need specific software
  - Reference container images from Docker Hub if needed

- Apply automation principles:
  - Ensure your action fails appropriately when something goes wrong
  - Include meaningful output and logging
  - Use environment variables and secrets when needed

### Step 9: Common Implementation Patterns

#### For Code Quality/Testing:
```yaml
name: Code Quality Check
on: pull_request
jobs:
  quality-check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Run quality checks
        run: |
          # Your quality check commands here
          echo "Running code quality checks..."
```

#### For Data Analysis:
```yaml
name: Automated Analysis
on: workflow_dispatch
jobs:
  analyze:
    runs-on: ubuntu-latest
    container:
      image: jhudsl/ottr_python:main  # Example with R and Python
    steps:
      - uses: actions/checkout@v4
      - name: Run analysis
        run: |
          # Your analysis commands here
```

#### For Documentation:
```yaml
name: Generate Documentation
on: push
jobs:
  docs:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Generate docs
        run: |
          # Documentation generation commands
```

## Phase 4: Testing and Iteration

### Step 10: Open Your Pull Request
- Commit your changes to your branch
- Push the branch to GitHub
- Open a pull request from your branch to main
- Key: This triggers the `GHA Assignment Eval` test

### Step 11: Monitor Automated Evaluation
- Watch for the `GHA Assignment Eval` check to start running
- This evaluator will test whether your GitHub Action runs successfully
- Wait for it to complete and comment on your PR

### Step 12: Interpret Evaluation Results
- Success: You'll receive a validation code in the PR comment
- Failure: You'll get specific error messages and troubleshooting tips
- The evaluator checks for common issues and provides guidance

## Phase 5: Troubleshooting and Refinement

### Step 13: Debug Common Issues
- YAML syntax errors: Check indentation, colons, and spacing
- File location errors: Ensure file is in `.github/workflows/`
- Permission errors: May need to add GitHub secrets or tokens
- Missing dependencies: Check if your chosen environment has required software
- Silent failures: Verify your action actually does what you expect

### Step 14: Apply Troubleshooting Strategies
- Read error messages carefully: They often contain the exact solution
- Check the logs: Go to Actions tab and examine detailed output
- Test incrementally: Make small changes and test each one
- Use marketplace actions: Leverage existing actions when possible
- Print debugging info: Use `echo` commands to verify assumptions

### Step 15: Iterate Until Success
- Make changes to your `ASSIGNMENT_2.yml` file on your branch
- Commit and push changes to trigger new evaluation runs
- Keep refining based on feedback until you get a successful build

## Phase 6: Completion

### Step 16: Collect Your Validation Code
- Once your GitHub Action runs successfully, copy the validation code from the PR comment
- Verify: Make sure it's a real validation code, not an error message
- Keep this code safe for your quiz submission

### Step 17: Submit Your Quiz
- Navigate to your Coursera Capstone Quiz
- Paste the validation code when prompted
- Submit the quiz to receive credit for your work

## Pro Tips for Success

### Choose Appropriate Scope
- Your action should be useful but not overly complex
- Focus on demonstrating GitHub Actions concepts rather than building production software
- A working simple action is better than a broken complex one

### Leverage Course Materials
- Use troubleshooting strategies from the GitHub Actions course
- Reference YAML examples from course exercises
- Apply container knowledge if your action needs specific software environments

### Use the Evaluation System Effectively
- The automated evaluator provides immediate feedback
- Don't be afraid to make multiple attempts - each iteration teaches you something
- Read the evaluator's comments carefully for specific guidance

### Think Like a Developer
- Consider when your action should run (triggers)
- Think about error handling and edge cases
- Include meaningful logging and output messages
- Test your assumptions about what the action environment provides

### Common Useful Actions for Capstone Projects
- Data validation: Check that uploaded data meets expected formats
- Report generation: Automatically create summary reports from data
- Code style checking: Ensure consistent formatting and style
- Dependency checking: Verify all required packages are available
- Backup creation: Automatically backup important files
- Notification system: Send alerts when certain conditions are met

Remember: This assignment builds on both the containers knowledge (for choosing appropriate environments) and the GitHub Actions automation concepts. The goal is to demonstrate your understanding of continuous integration principles by creating something that automatically improves or validates your capstone project.

The automated evaluation system is designed to help you learn through iteration, so embrace the feedback loop and keep refining your action until it works reliably!
