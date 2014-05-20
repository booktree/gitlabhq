# Booktree

**Book Development** with **Version Control**

<img alt="logo" src="https://raw.github.com/cirosantilli/booktree/master/public/gitlab_logo.png" width="256"></img>

**Mission**:

- increase the quality / price ratio of textual learning material: textbooks, papers, tutorials.
- motivate readers (students) to learn by contributing.

# Intro for programmers

- **GitHub clone**
- optimized for **book development and publishing** through [these features](#intended-features)
- accessible to **non programmers**
- powered by **[GitLab](https://github.com/gitlabhq/gitlabhq)**, the best open source GitHub clone:
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

-   **everything** can be done via the web interface: `mv`, `add`, `status`, `diff`.

    Non programmers:

    - learn Git from the browser
    - don't need to install anything

-   publishers can **set a price** for the compiled output, readers **pay** to have it.

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

Closed source unless noted otherwise.

-   [GitHub](https://github.com): no PDF output and sale, CLI-free workflow very limited (no `commit --amend`, `git add`, etc.).

-   [Banyan](https://banyan.co): seems to do exactly the same as this project via GitLab. Waiting for them to open public beta (signup currently disabled) to review.

-   [O'Reilly Atlas](https://atlas.oreilly.com/) seems to do Git + publishing via GitLab. Waiting to be granted on request access to the private beta review it.

-   [OERPUB](http://oerpub.org/collaborate) is building the open source:

    - [GitHub book editor](https://github.com/oerpub/github-bookeditor): a web editor that saves to GitHub via the API
    - [pdf-ci](https://github.com/philschatz/pdf-ci): PDF compilation on push via GitHub hooks

    These two tools are part of what we want to build, but we feel that using GitLab instead of GitHub is the way to go because it allows us to adapt the web frontend code and interface with it more tightly.

-   [Penflip](https://www.penflip.com). Markdown input. Git based: offers clone URL, but not local compilation. Creating full Git web including merge requests, but not yet as powerful as GitLab's. TODO: what is their web interface based on?

-   projects with no Git interaction: some have limited Git-like capabilities like versioning, but none reach the full power of a Git web interface.

    -   with book sale:
        - [Leanpub](https://leanpub.com):                 no LaTeX, closed source
        - [Softcover](https://softcover.io):              no editing web interface. Open source compiler, web interface closed.
        - [Blurb](http://www.blurb.com/company-profile):  downloadable editors for Windows / Mac, not possible to create book for free
        - [guides.co](http://www.guides.co):              WYSIWYG editor, sell on Amazon
        - [PressBooks](http://pressbooks.com/):           WordPress based. WYSIWYG HTML input, PDF, EPUB output.
        - [Inkling Habitat](https://habitat.inkling.com): WYSIWYG editor, limited versioning, issue tracker.
    -   without book sale:
        - [Connexions](http://cnx.org/).            open source, no Markdown.
        - [ShareLaTeX](https://www.sharelatex.com): open sourced early 2014, no Markdown, versioning on free version. Hidden Git back-end.
        - [WriteLaTeX](https://www.writelatex.com): no Markdown, branches or merge requests, closed source.

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

# Contributing

If you want to contribute to this project, see the [CONTRIBUTING.md](CONTRIBUTING.md).
