The [Gitlab guidelines](https://github.com/gitlabhq/gitlabhq/blob/master/CONTRIBUTING.md) apply unless stated otherwise.

# Install

Installation is very similar to that of Gitlab itself. The recommended method for both production and development is to use the [Gitlab Elearn Cookbook on metal](https://gitlab.com/cirosantilli/cookbook-gitlab/blob/master/doc/development_metal.md).

Like for the original Gitlab, configuration files which vary across deployments are gitignored, given a git tracked `.example` version, and installed by the cookbook via templates found under `templates/default`.

# Reset development install to initial state

To reset the state of the Gitlab Elearn server to initial state, use `bundle exec rake gitlab:setup`. This command is analogous to a `bundle exec rake db:reset`, and not `db:setup`: it destroys everything and then recreates initial state, including the repositories.

# Recommended branch structure

Use the following branches:

- `origin`: original Gitlab.
- `mine`: this repo.

This weird use of `origin` instead of `upstream` is needed for the moment to make some tests pass.

Use feature branches for every modification.

# Submitting merge requests

This project will attempt to:

- merge back any contributions which also make sense for Gitlab.
- incorporate every new version of Gitalb

It is expected however that some changes cannot be merged back. Files in which incompatibilities are certain are listed under `.gitattributes` with `merge=ours`.

One of the points in which the philosophy of Gitlab Elearn differs from Gitlabhq is that there is only meant to be one Gitlab Elearn server on the entire world, instead of everyone hosting their own. This is of course possible if you wish to do so, but the real strength of the system comes from collaboration, so you are not encouraged to host your own Gitlab Elearn (unless as a proof that one hosting service is better than another).

- if your patch can be merged back into GitlabHQ:

    - do it on `origin`

    - make a pull request directly to GitlabHQ

    - after 2 weeks without any answer from the Gitlab Team, merge on `mine` and make a pull request to Gitlab Elearn.

            We may accept it even if GitlabHQ refused or ignored it, since we have different goals.

    - if it is accepted on Gitlab, it will become available for Gitlab Elearn when we update to the next stable version.

        We will only merge GitlabHQ stable releases into Gitlab Elearn as soon as possible after the release comes out (which happened the 22nd of every month for some years now).

- if your patch only makes sense for Gitlab Elearn:

    Do it on `mine`. Pull request directly and only to Gitlab Elearn.
