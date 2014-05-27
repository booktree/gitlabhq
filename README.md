# Booktree

**Book Development** with **Version Control**

<img alt="logo" src="https://raw.github.com/cirosantilli/booktree/master/public/gitlab_logo.png" width="256"></img>

**Mission**:

- increase the quality / price ratio of textual learning material: textbooks, papers, tutorials.
- motivate readers (students) to learn by contributing.

# Intro for programmers

-   **GitHub clone**
-   optimized for **book development and publishing** through [these features](#intended-features)
-   accessible to **non programmers**
-   powered by **[GitLab](https://github.com/gitlabhq/gitlabhq)**, the best open source GitHub clone:
    - [GitHub top 30 by stars](https://github.com/search?p=3&q=stars%3A%3E10000&ref=searchresults&type=Repositories)
    - [6 people working full time with service revenue](https://www.gitlab.com/about/)
    - [Feature set close to GitHub](https://www.gitlab.com/features/)

# Intro for non-programmers

- **create**: edit and compile **markdown / Latex** input **online or locally**
- **publish**: share **HTML / PDF / EPUB** online **with one click**
- **sell**: set the price, buyers **pay**

with **Version control** because we adapted:

- IT industry **collaboration** techniques **Git** + **Bugtracker**
- to **non programmer** book developers

If you are not familiar with version control (Git, SVN, Mercurial) [read this](doc/new-to-source-control.md).

# Intended Features

These are key features we intend to implement:

-   when users push or save from the web UI **markdown or LaTeX input**, we **compile and host HTML, PDF, EPUB output**

-   Js editor with **side by side source / preview** view for individual files, compatible with the on push compiler.

-   **everything** can be done via the web interface: `mv`, `add`, `status`, `diff`, multi-file commits, revolve merge conflicts.

    Non programmers:

    - learn Git from the browser
    - don't need to install anything

-   writers can **set a price** for the compiled output, readers **pay** to have it.

-   **metrics for everything**: users, projects, groups, issues, comments, tags.

    Help people find the best material, and give the best contributors due credit.

For a detailed list of intended features, check [the `accepting-pr` label of our issue tracker](https://github.com/cirosantilli/booktree/issues?labels=accepting-pr&page=1&state=open).

# Features

There are currently no key features where we differ from GitLab. Everything was merged back.

Key features present in GitLab include:

-   bug tracker with merge requests.

    Treat every reader questions and suggestions as issues or merge requests.

    Never answer the same question twice.

For a detailed list of implemented features in which we differ from GitLab check the [CHANGELOG_FORK](CHANGELOG_FORK).

# We vs Them

Similar projects and features which they lack.

Systems are closed source unless noted otherwise.

Big wiki comparison table at: <https://github.com/cirosantilli/booktree/wiki/Alternatives>

- [GitHub](https://github.com): no PDF output and sale, CLI-free workflow very limited (no `commit --amend`, `git add`, etc.). Has mentioned interest in book development.

- [Inkling Habitat](https://habitat.inkling.com). WYSIWYG editor, versioning, issue tracker. Browser plugin (currently no Firefox). 50M investments between 2009 and 2014, 9 collaborators (multiple products).

- [O'Reilly Atlas](https://atlas.oreilly.com/) seems to do Git + publishing via GitLab. Waiting to be granted on request access to the private beta review it.

- [Penflip](https://www.penflip.com). Markdown input. Git based: offers clone URL, but not local compilation tools. Simplified Git web including merge requests. TODO: what is their web interface based on?

-   [OERPUB](http://oerpub.org/collaborate) is building the open source:

    - [GitHub book editor](https://github.com/oerpub/github-bookeditor): a web editor that saves to GitHub via the API.
    - [pdf-ci](https://github.com/philschatz/pdf-ci): PDF compilation on push via GitHub hooks.

    These two tools are part of what we want to build, but we feel that using GitLab instead of GitHub is the way to go because it allows us to adapt the web frontend code and interface with it more tightly.

- [ShareLaTeX](https://www.sharelatex.com). Open sourced early 2014, no Markdown, versioning on free version, hidden Git back-end, [at least 94k users](https://twitter.com/henryoswald/status/459367445946707968).

- [WriteLaTeX](https://www.writelatex.com). No Markdown, branches or merge requests, closed source.

- [Authorea](https://www.authorea.com). Markdown and LaTeX input. Git backend as it shows hashes on URLs. Basic versioning. TODO: pull requests? 3 authors. Focus on PDF and Academia.

- [Beegit](https://beegit.com/). Private beta, waiting for review. Deducing from presentation video: Markdown input, multi file project, version control, file browser. Possibly GitLab based. 3 collaborators.

- [Draft](https://draftin.com). Markdown input, single file input/output only. Limited version control and merge request-like functionality.

- [Connexions](http://cnx.org/). Open source, no Markdown.

- [prose.io](https://github.com/prose/prose). GitHub + GitHub Pages editor frontend. Open source.

- [Leanpub](https://leanpub.com). No LaTeX, book sale.

- [Softcover](https://softcover.io). No editing web interface. Open source compiler, web interface closed. Book sale.

- [Blurb](http://www.blurb.com/company-profile). Downloadable editors for Windows / Mac, not possible to create book for free.

- [guides.co](http://www.guides.co). WYSIWYG editor, sell on Amazon.

- [PressBooks](http://pressbooks.com/). WordPress based. WYSIWYG HTML input, PDF, EPUB output.

Discontinued projects:

- [Banyan](https://banyan.co): seems to do exactly the same as this project via GitLab. Waiting for them to open public beta (signup currently disabled) to review. A third party informed me that they have discontinued.

- [Editorially](https://editorially.com). Markdown input. Shut down May 30 2014.


# Business model

Optimize for world **happiness**:
-   if your project is:
    - **open source**, you get **all** features for **free**
    - **closed source**, you **may** have to **pay** based on repository size / number of compiles
-   **support**: we are **installable locally** for free and we sell **technical support**.
-   **book sale**. Authors can sell books, and we take a small percentage of their profit.
-   we will stay almost entirely **open source** forever, so that anyone can contribute with great features.

# Why the idea is good

-   The current coding / project management workflow is close to **optimal** for creation of code, and is used for every single useful software project today.

    Books are **very similar** to code, but their development process is still on the **paper age**.

    We can **reuse** much of the existing coding infra structure to develop books and manage classes.

-   Students are greatly motivated by improving and creating books **themselves**.

-   Teachers can collaborate with other students and teachers from **all over the world** to create the perfect learning environment, and do their jobs at the same time.

-   There are other projects which have **insufficient subsets** of what must be done, some of which are already financially bootstrapped.

    Because of our code reuse, we can offer a better product than them.

-   Specializing in books means that we can compile the books ourselves since there are few possible input / output types, allowing:

    - users to develop from the web UI without installing anything
    - users to sell the compiled output from our website

# Architecture

The project will be composed of the following components, one per repository and communicating through REST APIs and Git:

- a CI system like [Drone](https://github.com/drone/drone) or [Travis](https://github.com/travis-ci/travis-ci), that compiles and deploys the book. Can be configured through a `.yml` configuration file in the repository.

- an editor frontend that takes a repository and makes commits such as [Prose](https://github.com/prose/prose). The editor must also consider configuration options in the `.yml` configuration file, so that the preview it offers matches the CI's compilation.

- the output files hosting. Several alternatives exist for this, depending on the output generated by the CI. For example, Softcover can serve as a sales front-end if the book is compiled with their software. GitHub pages can serve as a static website frontend if a Jekyll site is generated (containing the PDF, etc.)

- a thinly modified GitLab that contains the issue tracker, file browser, user profiles and cohesively glues all elements together.

While all components already exist in some form, the great challenge is putting them all together into a coherent whole.

This project will decide on a suitable default for the compiler, and make each component work sensibly with that default. Next we shall consider widening the possibilities, while maintaining coherence through the `.yml` configuration file.

Advantages of the modularization:

- individual components may be used for multiple existing systems, increasing potential user base. For example, the CI compiler and the editor could be used as well on our modified GitLab interface as with GitHub or Bitbucket.

- easier to rebase on top of the individual projects

- easier to merge back to those projects

# Contributing

If you want to contribute to this project, see the [CONTRIBUTING.md](CONTRIBUTING.md).
