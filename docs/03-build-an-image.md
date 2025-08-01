# Building a Docker Image

<img src="03-build-an-image_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g361b9572af4_0_181.png" alt="Learning Objectives: Recognize and plan out Docker image needs for a project; Examine a Dockerfile and add packages; Test and monitor the use of a Docker image" width="100%" />

## Phase 1: Repository Setup and Planning

### Step 1: Set Up Your Working Environment

<input type="checkbox"> Navigate to your capstone sandbox repository.<br/>
<input type="checkbox"> Locate the `Docker_Assignment/docker/Dockerfile` - you will be making changes within this file.<br/>

::: {.notice}
Important: Don't change the name or location of this file.
:::

### Step 2: Switch to Your Working Branch (if needed)

<input type="checkbox"> Verify that you're on the branch you created during the set up instructions.<br/>
&nbsp;&nbsp;&nbsp;&nbsp; • The example used the name `docker-assignment`.

**Option A: Using GitHub Desktop**

<input type="checkbox"> Check the "Current Branch" Dropdown on the top left of the screen. <br/>
<input type="checkbox"> Use the menu to select the branch if you are not on the branch you expect to be on. <br/>

<div class="click_to_expand_block">

<details><summary>**Option B: Using a command-line interface**</summary>

```bash
git status

# The first line of the output of this command will report what branch you are on...
# On branch docker-assignment
```

If you are not on the branch you expect to be on, you can ["checkout"](https://git-scm.com/docs/git-checkout) or ["switch"](https://git-scm.com/docs/git-switch) your branch.

</details>

</div>

### Step 3: Analyze Your Capstone Project Needs

In general, you may already have a reason for building a custom docker image, or a specific set of tools you wish to package together. The following questions and guidelines are helpful for real-world development of a custom docker image.  

_Here are some situations you might find yourself in where a docker image is helpful_:<br/>
• You are building a Github action and need a specialized group of packages.<br/>
• You are building an analysis that you need a collaborator to run.<br/>
• You are building software you want to be reliable in its deployment.<br/>

_Questions to ask yourself_:<br/>
• What programming languages you're using (R, Python, etc.)<br/>
• What packages/libraries your analysis scripts require<br/>
• What types of security concerns does this project have?<br/>
• Are there publicly available docker images that could cover your needs already?<br/>

For this capstone project specifically, you will create a custom docker image with very little guidance as to what packages it will include. Think about a couple of packages that are helpful in your day to day work, and build a docker image with that in mind.

## Phase 2: Dockerfile Development

### Step 4: Examine the Base Setup

<input type="checkbox"> Open `Docker_Assignment/docker/Dockerfile`<br/>
<input type="checkbox"> Look on [Docker Hub](https://hub.docker.com/) for what base image best suits your needs -- what's the smallest image you can get away with that is from a verified source?<br/>
<input type="checkbox"> Understand what's already included in the base image already. If you're not sure what's already included, consider [inspecting the image with Docker Desktop](https://docs.docker.com/desktop/use-desktop/images/#inspect-an-image)<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; • Note: You don't need to add a package that's already there.<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; • Will it work with R or Python packages or both?<br/>
<input type="checkbox"> Once you've chosen a base image, [add it to your Dockerfile](https://hutchdatascience.org/Containers_for_Scientists/no_toc/05-modifying-containers.html#activity-instructions).<br/>

### Step 5: Add Packages Incrementally

<input type="checkbox"> Start by adding just one or two additional packages to your Dockerfile<br/>
<input type="checkbox"> Use the [templates from the course](https://hutchdatascience.org/Containers_for_Scientists/no_toc/05-modifying-containers.html#templates-for-adding-packages):<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; • For R packages: `RUN Rscript -e "install.packages('packagename')"`<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; • For Python packages: `RUN pip3 install packagename`<br/>
<input type="checkbox"> Add comments explaining what each package does<br/>

### Step 6: Build Locally

<input type="checkbox"> If developing locally (e.g., working through Command Line or GitHub Desktop, rather than on [github.com](https://github.com/) directly), make sure the Docker application is running, and [test your Dockerfile](https://hutchdatascience.org/Containers_for_Scientists/no_toc/05-modifying-containers.html#step-3-build-the-image-from-the-dockerfile) with:<br/>

```bash
cd Docker_Assignment/docker
docker build . -t my-capstone-image
```

<input type="checkbox"> Iterate fixing any build errors and re-building before pushing to GitHub. This saves time and GitHub Actions usage.<br/>

<img src="03-build-an-image_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g361b9572af4_0_0.png" alt="This table contains common Docker issues you might encounter while building your docker image locally" width="100%" />

::: {.notice}
If you're not developing locally, opening a pull request with changes to your Dockerfile on GitHub should trigger an evaluation action as explained in the next phase.
:::

## Phase 3: Testing and Iteration

### Step 7: Open Your Pull Request

<input type="checkbox"> Commit your Dockerfile changes to your branch<br/>
<input type="checkbox"> Push the branch to GitHub<br/>
<input type="checkbox"> Open a pull request from your branch to the main branch<br/>


::: {.notice}
Changes to the `Docker_Assignment/docker/Dockerfile` triggers the `Docker Assignment Eval` test. Can you guess why?

<details><summary> Automatic Evaluation after changes to the Dockerfile </summary>

The capstone sandbox is using a GitHub Action with a [trigger that is defined by changes to the Dockerfile within a pull request wanting to merge to main](https://github.com/fhdsl/capstone-sandbox/blob/5eb0a09fba7de605bacc8f7b98d1ed9693b9ef1d/.github/workflows/docker_assignment_eval.yml#L3-L7) to evaluate the Dockerfile.

<img src="03-build-an-image_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g361b9572af4_0_196.png" alt="Ruby wants to know if her analysis is reproducibly so she sets up an automation tool to re-run her analysis whenever she pushes changes to her analysis. This robot has a computer for a body and says ‘I will re-run Ruby’s analysis consistently and instantly upon whatever trigger she sets up.’" width="100%" />

</details>
:::

### Step 8: Monitor the Automated Testing & Interpret the Results

<input type="checkbox"> On [github.com](https://github.com/), within your pull request, watch for the `Docker Assignment Eval` check to start running. This GitHub Action will attempt to build your Dockerfile.<br/>
<input type="checkbox"> Wait for it to complete. It will comment on your PR whether it successfully built or not. If you don't see the comment try refreshing your browser<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; • Success: You'll get a validation code in the comment<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; • Failure: You'll get error messages explaining what went wrong. Read the error messages carefully - they contain clues for fixing issues<br/>
<input type="checkbox"> Interpret the results and proceed accordingly:<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"> If the test's comment provides a validation code, skip to Phase 5.<br/>
  &nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"> If the test's comment contains error messages, visit Phase 4: Troubleshooting and Refinement of these instructions.<br/>

## Phase 4: Troubleshooting and Refinement

### Step 9: Debug Build Failures

Common issues to check: <br/>
  <input type="checkbox"> Typos in package names<br/>
  <input type="checkbox"> Missing dependencies (install system packages before language packages). Google or a [code trained LLM](https://doi-org.fhcrc.idm.oclc.org/10.1038/d41586-023-03023-4) (e.g., [Phind](https://www.phind.com/)) can be helpful for determining missing dependencies.<br/>
  <input type="checkbox"> Incorrect syntax in RUN commands<br/>
  <input type="checkbox"> Base image doesn't support your installation method<br/>

### Step 10: Iterate Until Success

<input type="checkbox"> Make changes to your Dockerfile on your branch<br/>
<input type="checkbox"> Commit and push changes<br/>
<input type="checkbox"> Each push will trigger a new test run<br/>
<input type="checkbox"> Keep refining until you get a successful build!<br/>

<img src="03-build-an-image_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g368818bb4f3_0_417.png" alt="You may have to troubleshoot iteratively until your dockerfile builds successfully. Git commit and push edits to your dockerfile and check your existing pull request to receive evaluation from automated assignment checks. Interpret the results. If you were not successful, troubleshoot and iterate this process as needed, checking your pre-existing pull request for new evaluation results after making additional changes. Or if you were successful in your assignment, submit the verification code to your Coursera quiz (or move on to the next section if you are not using Coursera or some certification method to take this course)" width="100%" />

### Step 11: Merge Your Pull Request

Once you've received a validation code (congrats!), you can treat this like a team member approved your pull request. Go ahead and merge the PR and delete your branch so that your Dockerfile will be on the main branch, available for use in a later assignment if you want it.

<input type="checkbox"> Click the green <div class = "github_button"> Merge pull request </div> button. <br/>
<input type="checkbox"> Adjust the commit message and extended description as you see fit. <br/>
<input type="checkbox"> Click the green <div class="github_button"> Confirm merge</div> button. <br/>
<p class = buttontext><input type="checkbox"> Finally, after you see "Pull Request successfully merged and closed displayed, you can click the gray <div class="github_gray_button"> Delete branch</div> button. <br/></p>

## Phase 5: Completion


::: {.certificate}

If you are taking the course on Coursera:

**Collect Your Validation Code**

<input type="checkbox"> Copy the validation code from the pull request comment earlier in the thread/above where you've merged and deleted your branch. You'll need the code in order to submit your quiz.<br/>

::: {.notice}
Important: Make sure it's a real validation code, not an error message or status code used to identify an error.
:::


**Submit Your Quiz**


<input type="checkbox"> Go to your Coursera Graded Assignment ("Building a Docker Image")<br/>
<input type="checkbox"> Paste the validation code<br/>
<input type="checkbox"> Submit the quiz to get credit for your work<br/>

<div class = 'iconstyle'>icons from [icons8](https://icons8.com/) </div>

:::



## Suggestions for Troubleshooting and Best Practices

Remember, this assignment is designed to give you hands-on experience with the container building process. The automated testing system provides immediate feedback, making it easier to learn through iteration rather than getting everything perfect on the first try.



### Start Simple

- Begin with just the most essential packages for your analysis
- You can always add more in subsequent iterations
- A working simple image is better than a broken complex one
- Reference tips from the [Containers for Scientists course](https://hutchdatascience.org/Containers_for_Scientists/) as needed.

### Leverage the Automated Testing

- The GitHub Action is your friend - it provides immediate feedback
- Don't be afraid to make multiple attempts
- Each unsuccessful iteration and new error message teaches you something about container building

### Read Error Messages Carefully

- Error messages may contain the exact solution you need to fix your problem
- Look for phrases like "package not found" or "missing dependency"
- Google specific error messages if they're unclear
- Copy and paste the error code and include any relevant context to a [code trained LLM](https://doi-org.fhcrc.idm.oclc.org/10.1038/d41586-023-03023-4) (e.g., [Phind](https://www.phind.com/)) for additional help.

### Document Your Process

- Add comments to your Dockerfile explaining your choices
- Comments & documentation help you remember your reasoning if you need to modify it later and may make debugging easier
