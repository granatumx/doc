!bquote
`doc` is an image that provides docone documentation for each module (webapp, taskrunner, etc...)
!equote

===== Prerequisites =====

You mainly need a working copy of "Docker": "http://docker.com". It is used
exclusively to manage system configurations for running numerous tools
across numerous platforms.

===== Running =====

!bc sys
$ make docker  # bootstraps itself for generating its own documentation
$ make doc     # will run the docker image just created to make README.md
$ make docker  # now keep the README.md in the image
!ec

Generally a script is provided named `gendoc.sh` which executes the docker image.
from the `scripts` module. This script copies the `.do.txt` file to the `doc` container and executes `doconce`.
The result is copied back into the directory. In this manner, a heavyweight documentation system
that can break easily is avoided.
