# Usage for teachers

## Setup

1. Clone this repository and push it to [a new one](https://github.com/new) (under your GitHub organization).
    * If you make a fork of this one instead, new pull requests from your students will default to going to this repository, rather than your copy.
1. [Enable Travis CI for this repository.](http://docs.travis-ci.com/user/getting-started/#To-get-started-with-Travis-CI%3A)
1. Clear out the `_data/` directory.
1. Create a new directory for the current term/session/etc. with a `.keep` file in it, e.g. `_data/SOME_TERM/.keep`.
    * [More info on `.keep` files](http://stackoverflow.com/a/7229996/358804)
1. Change the `current_term` in the [`_config.yml`](_config.yml) to match the new directory.
1. Update the link in the repository description to be `http://ORG.github.io/students`.
1. Ensure that the site appears.

## In-class

1. Have the students follow the instructions in the [README](README.md).
1. Leave comments on and merge some of the pull requests manually, so that they understand what's happening.

## Later

1. [Create a new GitHub token.](https://github.com/settings/tokens/new?description=add_students&scopes=repo,public_repo,read:org,admin:org)
1. Run (with `ORG` and `TERM` replaced):

    ```bash
    TOKEN=... ORG=advanced-js TERM=students_2015 ruby bin/add_students.rb
    ```

which will merge the open pull requests on this repository, and add the students to the specified team.
