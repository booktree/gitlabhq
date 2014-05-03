The [GitLab guidelines](https://github.com/gitlabhq/gitlabhq/blob/master/CONTRIBUTING.md) apply unless stated otherwise.

# Labels

-   `bug`

-   `duplicate`

-   `question`: usage question for something that is already possible and so convenient it does not deserve a new feature.

-   `enhancement`: requests that something be modified, although it is not clearly broken as in a `bug`. Sometimes the difference between both is subjective.

    Unlike GitLab, we treat feature requests in the GitHub issue tracker.

    Labels that only apply to `enhancements`:

    - `accepting-pr`: the project admins endorse this `enhancement`, and will definitely take at submitted patches 
    - `hard1`, `hard2`, `hard3`: expected implementation difficulty: low, medium, high.
    - `prio1`, `prio2`, `prio3`: importance of the feature: low, medium, high.
    - `wontfix`: feature request was declined.
    - `WIP`: work in progress: the pull request is not yet ready to be merged.

If you don't have the permission to add a label to your issue, please add it to the title of the issue as:

    [WIP][hard2] Do something new.

If collaborators agree with the label, they will add it later on.

# Upvotes

Upvoting issues you like is encouraged. Please only use the marker `+1` and keep a running count of upvotes as in:

    +1 1

Next upvote comment:

    +1 2

Next upvote comment:

    +1 3

And so on.

# Install

Installation is very similar to that of GitLab itself. The recommended method for both production and development is to use the [Booktree Cookbook on metal](https://gitlab.com/cirosantilli/cookbook-gitlab/blob/master/doc/development_metal.md).

Like for the original GitLab, configuration files which vary across deployments are gitignored, given a Git tracked `.example` version, and installed by the cookbook via templates found under `templates/default`.

# Reset to initial state

To reset the state of the server to the initial state, use `bundle exec rake gitlab:setup`. This command is analogous to a `bundle exec rake db:reset`, and not `db:setup`: it destroys everything and then recreates initial state, including the repositories.

# Branches

Use the following branches:

- `origin`: original GitLab.
- `mine`: this repo.

This weird use of `origin` instead of `upstream` is needed for the moment to make some tests pass.

Use feature branches for every modification.

# Merge requests

This project will attempt to:

- merge back any contributions which also make sense for GitLab.
- incorporate every new version of GitLab

It is expected however that some changes cannot be merged back. Files in which incompatibilities are certain are listed under `.gitattributes` with `merge=ours`.

One of the points in which our philosophy differs from GitLab is that there is only meant to be one server on the entire world for our system, instead of everyone hosting their own. This is of course possible if you wish to do so, but the real strength of the system comes from collaboration, so you are not encouraged to host your own (unless as a proof that one hosting service is better than another).

- if your patch can be merged back into GitLab:

    - do it on `origin`

    - make a pull request directly to GitLab

    - after 2 weeks without any answer from the GitLab Team, merge on `mine` and make a pull request to us

            We may accept it even if GitlabHQ refused or ignored it, since we have different goals.

    - if it is accepted on GitLab, it will become available for to our project when we update to the next stable version.

        We will merge GitLab stable releases into our system as soon as possible after the release comes out, which happened the 22nd of every month.

- if your patch only makes sense for project:

    Do it on `mine`. Pull request directly and only to this project.
