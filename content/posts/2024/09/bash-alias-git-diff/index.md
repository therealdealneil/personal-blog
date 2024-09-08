+++
title = 'Creating a Bash Alias for Visual Git Diffs'
date = 2024-09-03T16:16:40-05:00
draft = false
tags = ["git", "productivity"]
+++

While I'm a big fan of using Git from the CLI, there are some things that are better with a GUI. If you're a developer who frequently uses Git and TortoiseGit, you might find it handy to create a Bash alias that opens the TortoiseGit diff window directly from the command line. This can save you time and streamline your workflow. In this post, I'll guide you through the steps to create a Bash alias called `git-diff` that does just that.

### Prerequisites

Before we start, make sure you have the following installed:
- **[Git](https://www.git-scm.com)**: You can download it from [git-scm.com](https://www.git-scm.com).
- **[TortoiseGit](https://www.tortoisegit.org)**: Download it from [tortoisegit.org](https://www.tortoisegit.org).

### Step-by-Step Guide

1. **Locate TortoiseGitProc.exe**:
    First, find the path to `TortoiseGitProc.exe`. This is typically located in the TortoiseGit installation directory. For example, it might be:

    ```
    C:\Program Files\TortoiseGit\bin\TortoiseGitProc.exe
    ```

2. **Open Your Bash Profile**:
    Open your `.bashrc` or `.bash_profile` file in a text editor. You can do this with the following command:

    ```bash
    nano ~/.bashrc
    ```

3. **Create the Alias**: 
    Add the following line to create the git-diff alias. Replace the path with the actual path to your TortoiseGitProc.exe:

    ```bash
    alias git-diff='TortoiseGitProc.exe /command:diff'
    ```

4. **Save and Close**: 
    Save the file and close the text editor. If you’re using `nano`, you can do this by pressing `CTRL + X`, then `Y`, and `Enter`.

5. **Reload Your Bash Profile**: 
    Apply the changes by reloading your Bash profile:

    ```bash
    source ~/.bashrc
    ```

### Using the Alias

Now, you can use the `git-diff` alias to open the TortoiseGit diff window. For example, to see the differences between your working directory and the last commit, you can run:

```bash
git-diff
```

### Conclusion

Creating a Bash alias for TortoiseGit diff can significantly speed up your workflow by allowing you to quickly open the diff window from the command line. This simple setup can save you time and make your development process more efficient.

I always recommend software engineers carefully inspect the content in their commits before pushing it up. This reduces the likelihood of pushing inadvertent content in your commits.

Happy coding!
