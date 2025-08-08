# Introduction



## Motivation

Cancer research in the 21st century is increasingly data-driven, with researchers generating and analyzing vast amounts of genomic, proteomic, imaging, and clinical data. The ability to effectively manage, analyze, and share these complex datasets has become as crucial as traditional laboratory skills. However, many cancer researchers find themselves working with computational tools and workflows that were not developed using robust software engineering practices. These tools often suffer from poor documentation, lack of version control, inadequate testing, and limited interoperability. Such limitations hinder collaboration, impede scalability, and make it difficult to reproduce results reliably.

The modern cancer informatics landscape demands not just analytical skills, but also proficiency in reproducible computational practices. Research has shown that computational analyses are often difficult or impossible to reproduce without direct contact with the original researchers [@BeaulieuJones2017]. This reproducibility crisis extends beyond academic concerns—it directly impacts the translation of research findings into clinical applications and the overall efficiency of cancer research efforts.

<img src="01-intro_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g30a4bb0444d_0_948.png" alt="Welcome to Making Science Reproducible, a Capstone Project Course. This course is brought to you by the I T C R Training Network." width="100%" />

## Target Audience

The course is intended for cancer researchers, bioinformaticians, and data scientists who work with computational analyses in cancer research contexts and want to enhance the reproducibility, efficiency, and shareability of their work.

This capstone course builds on foundational concepts from the following ITCR Training Network's courses:

- [Intro to Reproducibility in Cancer Informatics](https://hutchdatascience.org/ITN_course_search/Reproducibility_in_Cancer_Informatics_coursePage.html)
- [Advanced Reproducibility in Cancer Informatics](https://hutchdatascience.org/ITN_course_search/Adv_Reproducibility_in_Cancer_Informatics_coursePage.html)
- [Containers for Scientists](https://hutchdatascience.org/ITN_course_search/Containers_for_Scientists_coursePage.html)
- [GitHub Automation for Scientists](https://hutchdatascience.org/ITN_course_search/GitHub_Automation_for_Scientists_coursePage.html)

Students should be comfortable with basic GitHub operations, including creating repositories, making commits, and opening pull requests before beginning this capstone.


<a href="https://www.itcrtraining.org/courses" target="_blank"><img src="01-intro_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g366a6ed3497_0_211.png" alt="Prior to using this capstone, students should be comfortable with basic GitHub operations such as creating repositories or opening pull requests. Students may need to review the I T N courses on reproducibility practices and tools: Reproducibility in cancer informatics, Advanced reproducibility in cancer informatics, GitHub automation for scientists, and containers for scientists." width="100%" /></a>

_This capstone course is written for individuals who:_

- Conduct computational analyses for cancer research, including genomics, proteomics, imaging, or clinical data analysis.
- Have completed the ITN reproducibility courses mentioned above.
- Want to put the reproducibility skill sets together and get more practice doing this in a “real world” setting.


<img src="01-intro_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g30a4c584926_0_5.png" alt="For individuals who: Have completed the Intro Reproducibility, Advanced Reproducibility, Containers for Scientists, and GitHub Automation course in this series. Want to put the reproducibility skill sets together and get more practice in doing this in a real world setting." width="100%" />



## Curriculum

The course covers practical application of containerization and automation technologies specifically tailored for cancer informatics workflows. Unlike introductory courses that focus on individual concepts, this capstone emphasizes integration and **real-world application** of multiple technologies working together.


<img src="01-intro_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g366a6ed3497_0_0.png" alt="Topics covered in the reproducibility capstone include a review of best practices when using reproducibility tools as well as hands-on real-world practice creating images and containers with docker, automation with GitHub actions, using images and automation together, and creating GitHub secrets to enable use of these reproducibility practices within a GitHub environment" width="100%" />

## Objectives

<img src="01-intro_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g30a4c584926_0_0.png" alt="This course will demonstrate how to: Apply the best practices of reproducibility we have covered in this specialization, Create and implement an original Docker image, Create and store a GitHub secret, and Create and test an original GitHub Action" width="100%" />
<div class="click_to_expand_block">

<details><summary>Connecting the Learning Objectives to the Prerequisite courses</summary>

The [Intro to](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/no_toc/) and [Advanced Reproducibility in Cancer Informatics](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/no_toc/) courses both provide an overview of **best practices** such as

* Utilizing [organization in your project](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/no_toc/organizing-your-project.html)
* Composing [exploratory analyses or reports in Notebooks](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/no_toc/using-notebooks.html)
* [Documenting analyses and software](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/no_toc/documenting-analyses.html),
* Using [version control and branches](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/no_toc/using-version-control-with-github.html) for code
* [Data sharing (when appropriate)](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/no_toc/providing-data.html)
* [Requesting code review](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/no_toc/engaging-in-code-review---as-an-author.html)
* [Using automation](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/no_toc/automation-as-a-reproducibility-tool.html).
* [Software versioning](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/no_toc/managing-package-versions.html)
* [Using containers for managing software](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/no_toc/launching-a-docker-image.html)

While the intro and advanced reproducibility courses provide overviews about the more advanced topics like automation and containers, the [GitHub Automation for Scientists](https://hutchdatascience.org/GitHub_Automation_for_Scientists/no_toc/index.html) and [Containers for Scientists](https://hutchdatascience.org/Containers_for_Scientists/no_toc/) courses explore these topics, respectively, in more depth. Automation can be used as a continuous integration, continuous deployment tool such that automatic tests are set up to run whenever code is updated. Other automations can occur on a schedule or due to other events happening (like opening a pull request on GitHub).

The "create and implement an original **Docker image**" learning objective is putting into practice the theory from the [Containers for Scientists course](https://hutchdatascience.org/Containers_for_Scientists/no_toc/). Containers are used to package software with defined versions together so that a computing environment can be consistently and clearly defined as well as easily shared or used by many people.

Context on what a **GitHub Secret** is, why you would use secrets, and instructions on creating and storing a GitHub Secret are [covered briefly in the GitHub Automation for Scientists course](https://hutchdatascience.org/GitHub_Automation_for_Scientists/github-action-variables.html#setting-and-grabbing-secrets), but additional context is provided at the beginning of the GitHub Secrets exercise within this capstone.

The "create and test an original **GitHub Action**" learning objective is putting into practice the theory from the [GitHub Automation for Scientists course](https://hutchdatascience.org/GitHub_Automation_for_Scientists/no_toc/index.html). In addition, depending on the automation that is created, learners may need to incorporate use of a GitHub Secret and a Docker image.  

</details>

</div>

**Assessment Approach:**

The capstone uses a practical, project-based assessment model where students work with a provided computational sandbox environment to complete real-world tasks. Rather than traditional exams, students demonstrate mastery by successfully implementing containerized workflows and automated pipelines that pass automated evaluation criteria.

<img src="01-intro_files/figure-html//1ExTZsKDHKM0fIi0_tB80qd8cHvqjEDyNJp-OsnvZ19o_g368818bb4f3_0_162.png" alt="This course has a companion github repository template that provides a sandbox environment for learners to use to complete the hands-on assignments." width="100%" />

**Custom Container Development Assignment** - Students create Docker containers to support specific cancer analysis requirements, demonstrating understanding of containerization principles and bioinformatics software management.

**Working with GitHub Secrets Assignment** -- Students create a personal access token, store the token as a GitHub secret in a repository and access that secret in a GitHub Actions workflow, displaying application of best practices in security when handling sensitive information.

**Automated Workflow Implementation Assignment** - Students create GitHub Actions that automatically execute and validate cancer data analysis pipelines, showing proficiency in continuous integration concepts and workflow automation.

Each assignment utilizes automated evaluation systems that provide immediate feedback and validation codes upon successful completion, simulating real-world development environments where code must pass automated testing before deployment.

**Goal of this course:**
Enable cancer researchers to create, maintain, and share reproducible computational workflows that meet the evolving standards of modern cancer informatics while enhancing collaboration and accelerating scientific discovery.

**What is not the goal:**
This course does not aim to teach cancer biology, statistical analysis methods, or introductory programming concepts. Students are expected to bring domain expertise and basic computational skills to the course, focusing instead on learning to apply advanced reproducibility technologies to their existing research workflows.

## How to use the course

This capstone course is designed as a hands-on, practical experience that builds directly on the foundational knowledge from previous ITCR Training Network courses. Students should approach the course with an active learning mindset, ready to experiment, troubleshoot, and iterate on their solutions.

**Working with the Course Sandbox:**
The course utilizes a GitHub-based sandbox environment that simulates real-world research collaboration workflows. Students will work with the template repository, create branches for different assignments, and receive automated feedback through pull request evaluations. This approach mirrors modern software development practices and prepares students for collaborative research environments.

**Integration Focus:**
Each assignment builds on previous work and integrates multiple technologies. Students should be prepared to synthesize knowledge from containerization, automation, version control, and domain-specific cancer informatics concepts. The goal is to create holistic solutions rather than demonstrate isolated technical skills.

**Real-world Application:**
Throughout the course, students are encouraged to consider how the techniques they're learning apply to their own research contexts. The assignments use cancer informatics examples, but the principles and technologies transfer to a wide range of computational research domains.

We also recommend that students leverage the [broader ITCR Training Network community and resources](https://www.itcrtraining.org/) to enhance their learning experience and build lasting professional connections in the cancer informatics community.

## Where do you need to invest?

This course aims to help you apply what we have learned in the previous courses to a real world application. What you build in this capstone is completely up to you, but for your own benefit we suggest you try to make something you will use in your work beyond this specialization.

Think about work on GitHub that you are doing manually, or a project where you are struggling to easily reproduce the results. Those may be ripe opportunities for you to build something. However, keep in mind that it's OK to start small and build up to these goals as you learn.

Use a few minutes for introspective reflection about where you are spending a lot of time and effort to reproduce something that could use some reproducibility investment (like a Github Action or Docker image). Consider attempting to develop such reproducibility investments for these projects in your upcoming assignments.
