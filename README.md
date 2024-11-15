# SmartKids Docs

The repo holds the source code for the SmartKids Docs. If you want to contribute to the docs, then you’re in the right place. If you just want to read the docs, then go to <https://docs.smartkidsllc.com>.

## Building and previewing the site locally

1. Open a terminal.

2. If you do not use [the Nix package manager](https://nix.dev), then make sure that you have [Corepack](https://nodejs.org/docs/latest/api/corepack.html) installed by running this command:

    ```
    corepack --version
    ```

    If that command displays a version number, then you’re good. If that command gives you an error, then you can get Corepack by [installing Node.js](https://nodejs.org/en/learn/getting-started/how-to-install-nodejs).

    **Note:** If you choose to install Node.js using a package manager, then be careful. Not all Node.js packages contain the `corepack` command. For example, [Homebrew’s `node` package](https://formulae.brew.sh/formula/node) contains the `node` command, but it does not contain the `corepack` command. Homebrew users need to install [Homebrew’s `corepack` package](https://formulae.brew.sh/formula/corepack) in order to get the `corepack` command.

    **Note:** If you’re using Windows and you don’t already have Corepack, then you will need to close out of your terminal window and reopen it after everything has finished installing.

3. Make sure that you have a copy of this repo on your computer. If you aren’t sure how to do this, then please take a look at [this guide](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository
).

4. Change directory into the root of the repo by running this command:

    ```
    cd <path-to-smartkidsllc.github.io-repo>
    ```

5. Make sure that Corepack is enabled.

    - If you use the Nix package manager, then start a new development shell that has Corepack enabled by running this command:

        ```
        nix \
            --extra-experimental-features 'nix-command flakes' \
            develop
        ```

    - If you do not use the Nix package manager, then ensure that Corepack is enabled by running this command:

        ```
        corepack enable
        ```

        That command may give you one of these two errors:

        ```
        Internal Error: EACCES: permission denied…
        Internal Error: EPERM: operation not permitted…
        ```

        <details>
        <summary>If you get that error, then try enabling Corepack as an administrator (click here to show details).</summary>

        - If you’re using Windows, then do the following:

            1. Open a new Administrator Command Prompt window. If you aren’t sure how to do this, then please take a look at [this guide](https://www.howtogeek.com/194041/how-to-open-the-command-prompt-as-administrator-in-windows-10/).

            2. In the Administrator Command Prompt window, try enabling Corepack again by running this command:

                ```
                corepack enable
                ```

            3. Once that command finishes successfully, close out of the Administrator Command Prompt window.

            4. Go back to the terminal window that you opened earlier.

        - If you’re not using Windows, then run the following command:

            ```
            sudo corepack enable
            ```

        </details>

6. Make sure that all of the site’s dependencies are installed by running this command:

    ```
    yarn
    ```

7. If you see a prompt that looks like this,

    ```
    ! Corepack is about to download https://repo.yarnpkg.com/4.4.0/packages/yarnpkg-cli/bin/yarn.js
    ? Do you want to continue? [Y/n]
    ```

    then press <kbd>Y</kbd> followed by <kbd>Enter</kbd>.

8. Open a Web browser with a preview of what the site will look like by running this command:

    ```
    yarn start
    ```

9. Once you’re done previewing the site, stop the development server by going back to your terminal and pressing <kbd><kbd>Ctrl</kbd>+<kbd>C</kbd></kbd>.

10. If you see a prompt that looks like this,

    ```
    Terminate batch job (Y/N)?
    ```

    then press <kbd>N</kbd> followed by <kbd>Enter</kbd>.

## Contributing

If you want to contribute to this repo, then please take a look at [`CONTRIBUTING.md`](./CONTRIBUTING.md).

## Licensing and Attribution

This repository is licensed under the [MIT License](https://en.wikipedia.org/wiki/MIT_License). You are generally free to reuse or extend upon this code as you see fit; just include the original copy of the license.
