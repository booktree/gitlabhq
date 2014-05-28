First check the CONTRIBUTING guidelines applicable to all forked repositories: <https://github.com/booktree/booktree/blob/master/CONTRIBUTING.md>

# Install

Installation is very similar to that of GitLab itself. The recommended method for both production and development is to use the [Booktree Cookbook on metal](https://gitlab.com/cirosantilli/cookbook-gitlab/blob/master/doc/development_metal.md).

Like for the original GitLab, configuration files which vary across deployments are gitignored, given a Git tracked `.example` version, and installed by the cookbook via templates found under `templates/default`.

# Reset to initial state

To reset the state of the server to the initial state, use `bundle exec rake gitlab:setup`. This command is analogous to a `bundle exec rake db:reset`, and not `db:setup`: it destroys everything and then recreates initial state, including the repositories.

# Design goal divergences

Major points in which our design goals differ from GitLab include:

-   we give greater focus to a SaaS service rather than local installs.

    We intend to provide a service different enough from GitHub to be competitive.

    It is more advantageous to the world if all books can be found at single website.

    Local installs will still be supported.

-   we give greater focus to web interface Git and editing operations.

    We want non-programmers to use ours system, and therefore everything must be doable from the web interface.
