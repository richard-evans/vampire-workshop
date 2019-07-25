# vampire-workshop
Resources and files for the advanced vampire workshop. The workshop is targetted at scientists and engineers wishing to study magnetic materials and devices at the atomistic level. The workshop will cover the basic and advanced features of the [VAMPIRE code](https://vampire.york.ac.uk/) which can be used to study a wide range of magnetic materials and phenomena, from zero temperature ground states, equilibrium properties and magnetization dynamics.

## Getting started with this repository
In order to get started with this workshop, you should clone this repository using git.

`git clone https://github.com/richard-evans/vampire-workshop.git`

Git can be accessed through your terminal.

If you ever want to get the most up to date set of files, after you've cloned the repository, you can
`git fetch`.

This checks the origin repository (the version hosted here) for any changes compared to your local copy. You can then merge these copies into your repository with 
`git merge origin/master`. 

You should be sure to be checked out to the local branch you want to merge into, see below. 

This will overwrite local changes so it's best to checkout your own branch of this repository on your local machine, if you want to make substantial changes.

The `git fetch` and `git merge` can be replaced with a `git pull`, but this will automatically merge without asking about conflicts, so make sure that your changes are committed to a separate branch if you don't want them to be affected.  

## Making your own changes
In order to checkout your own branch, so that you can keep your own changes to a version of the repository, you can use
`git checkout -b branch_name`. This will create a new branch called "branch\_name" and checkout to it. In future you can just run 
`git checkout branch_name` to change branches.
The master branch will be the version of this repository that you should use as your base. 

When you make changes to files you can add and commit them to your branch by using `git add -A` followed by `git commit`. The -A adds all changes, but individual files/folders can be specified instead. `git commit` will open your default text editor, and let you add a commit message, save and exit this when you are done, and the changes will be added to your git repository. 

If you would like to run simulations, but don't want to keep your output files, and don't want to keep being reminded to add them by git, you can use the `working` directory. None of the files you add to this directory should be included by git, and they shouldn't be affected by new pulling down the newest version of the repository. This may change in future however.

## File locations
input-files/ and pdf-slides/ contain sections separated by day.

input-files/ contains basic input files for demonstrating vampire, as well as occassional brief walkthroughs. pdf-slides/ contains the presented slides from the workshop.

## Getting VAMPIRE
VAMPIRE is required to run the simulations in this workshop and is available at the [website](https://vampire.york.ac.uk/) with the source code hosted on [GitHub](https://github.com/richard-evans/vampire).

## License
The license is available in the LICENSE file. 
