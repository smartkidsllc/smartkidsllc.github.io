# Contributing to the SmartKids Docs

If you want to contribute to the SmartKids Docs, then you’ll need to have a GitHub account. You can learn more about registering a GitHub account [here](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github).

Once you have a GitHub account, there’s two main things that you can do in order to help improve the SmartKids Docs:

1. Filing issues
2. Submitting pull requests

## Filing issues

An issue is like an item on a to-do list. Issues say “we should do X”, but they usually don’t contain the code that we need in order to do X. Filing issues is easy. Anyone can file issues, even if they aren’t very technically savy.

To get started, you’ll need to identify a way that the SmartKids Docs site could be improved. Here are some examples:

-   “I noticed that there were spelling or grammatical errors.”
-   “I read this part of the site, but it was confusing to me.”
-   “It would be nice if this part of the site had more details.”
-   “I want to learn more about teaching X, but the site doesn’t have any information about X.”

Once you’ve identified a way that the site could be improved, then you can file an issue by following [these instructions](https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-an-issue).

## Submitting pull requests

A pull request is a proposed change. Pull requests allow you to formally propose that specific lines of text are added or removed from the site. Submitting pull requests is more difficult than filing issues, but they aren’t too bad once you get the hang of it.

To get started, you’ll need to identify a way that the SmartKids Docs site could be improved (see [the previous section](#filing-issues) for more details). Once you have an idea, you can create a pull request just like you would for any other GitHub repository. If you don’t already know how to create a GitHub pull request, then please follow [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-create-a-pull-request-on-github). If you get stuck while following that tutorial, then don’t hesitate to ask a fellow employee for help.

Once you start working on your pull request, here are a few tips that you may find useful:

-   [The README has instructions for how to build and run the site locally.](./README.md#building-and-previewing-the-site-locally)
-   The SmartKids Docs site is built using Docusaurus. You may want to take a look at [the documentation for Docusaurus](https://docusaurus.io/docs) in order to learn more about what you can do with Docusaurus.
-   You might want to make sure that your text editor supports [EditorConfig](https://editorconfig.org) files.

## Manually updating dependencies

This repository depends on software from many different sources. We use [a GitHub Actions workflow named “Open Auto-update Pull Request”](.github/workflows/auto-update-prs.yml) to try and make sure that all of our dependencies are kept up to date. GitHub will automatically run that workflow every so often. If that workflow detects that this repository has any out-of-date dependencies, then it will automatically open a pull request that updates those dependencies. After the pull request has been opened, someone will review the pull request. If the pull request works properly when it’s tested, then the reviewer will approve and merge the pull request.

Aside from reviewing and merging, the auto-update pull request process is completely automated. Automated processes are good, but they’re never perfect. At some point, someone’s probably going to need to try doing updates manually. Here’s how you update this repository’s dependencies without using GitHub Actions.

### With the Nix package manager

1. Make sure that you have the [Nix](https://nix.dev) package manager by running this command:

    ```
    nix-build --version
    ```

    If that command gives you an error, then you need to install the Nix package manager.

2. Make sure that you have [GitHub CLI](https://cli.github.com) installed by running this command:

    ```
    gh --version
    ```

    If that command gives you an error, then you need to install GitHub CLI.

3. Make sure that you’re logged in to GitHub CLI by running this command:

    ```
    gh auth status
    ```

    If you are not logged in to GitHub CLI, then that command will tell you
    what you need to do in order to log in.

4. Make sure that you have a copy of this repo on your computer.

5. Change directory into the root of the repo by running this command:

    ```
    cd <path-to-smartkidsllc.github.io-repo>
    ```

6. Update the Nix-related dependencies by running this command:

    ```
    nix --extra-experimental-features 'nix-command flakes' run .#update-script-part-1
    ```

7. Update the rest of the dependencies by running this command:

    ```
    nix --extra-experimental-features 'nix-command flakes' run .#update-script-part-2
    ```

### Without the Nix package manager

> [!NOTE]
> This process won’t update Nix-related dependencies.

1. Build the site by following the instructions in [the README](./README.md).

2. Update dependencies that aren’t related to Nix by running this command:

    ```
    yarn run update-script-part-2
    ```
