+++
title = 'Monorepo or Multi-Repo? Why Not a Metarepo!'
date = 2024-09-05T12:17:47-05:00
draft = false
tags = ["git"]
+++

In the software development world, there's always a debate about whether to use monorepos or multi-repos. Each has its pros and cons, but what if you could get the best of both worlds? Enter the metarepo. Let's dive into what a metarepo is, why it's awesome, and how you can set one up.

### What's a Metarepo?

A metarepo, or meta-repository, is like a master repo that holds references to other repos. It doesn't contain the actual code but acts as a central hub. This way, you can manage multiple repos as if they were one, striking a balance between monorepo and multi-repo setups.

### Why Use a Metarepo?

1. **Centralized Control**: Like a monorepo, a metarepo gives you a single point of reference, making it easier to manage dependencies and versions.
2. **Modular Freedom**: Each project stays in its own repo, so you keep the modularity and isolation benefits of a multi-repo setup.
3. **Scalability**: You can scale projects independently, avoiding the performance issues that sometimes come with large monorepos.
4. **Flexibility**: Developers can work on individual repos without the overhead of a monorepo, while still enjoying centralized management.

### How to Set Up a Metarepo

We're taking advantage of [Git Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to create our Metarepo. One annoyance with Git Submodules is any changes made in the submodule will cause it to appear as changes to stage on our Metarepo - this is not what we want. Fortunately, Git lets us ignore these changes as will be shown in the steps below. 

Here's a quick guide to getting your metarepo up and running:

#### 1. Create Your Metarepo

First, create a new repo that will serve as your metarepo. This repo will hold references to your other repos.

```bash
git init metarepo
cd metarepo
```

#### 2. Add Your Submodules
Use Git submodules to add your existing repos to the metarepo. Each submodule is a reference to another repo.

```bash
git submodule add https://github.com/your-org/repo1.git
git submodule add https://github.com/your-org/repo2.git
```

#### 3. Initialize and Update Submodules
After adding the submodules, initialize and update them to make sure they’re correctly linked.

```bash
git submodule init
git submodule update
```

#### 4. Ignore Submodule Changes
You can ignore changes made on the submodule from displaying on the metarepo. This reduces unnecessary noise on your metarepo.

```bash
git update-index --assume-unchanged repo1
git update-index --assume-unchanged repo2
```

#### 5. Work in Your Repositories
You can now work inside your repositories as you normally would.

```bash
cd repo1
git pull origin main
# Make Edits in repo1
git add .
git commit -m "Update repo1 with changes"
cd ..
cd repo2
git pull origin main
# Make Edits in repo2
git add .
git commit -m "Update repo2 with changes
```

#### 6. Automate with Scripts
To make things easier, create scripts to automate common tasks, like updating all submodules or checking their status.

```bash
#!/bin/bash
# update_all_submodules.sh
git submodule foreach git pull origin main
```

### Wrapping Up

A metarepo offers a balanced approach to managing multiple repos, combining the centralized control of a monorepo with the modularity of a multi-repo setup. By following these steps, you can set up a metarepo that enhances your development workflow and scales with your projects. This approach can be highly useful in a microservice architecture, where a team may maintain numerous repositories.