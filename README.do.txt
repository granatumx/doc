!bquote
`doc` is an image that provides docone documentation for each module (webapp, taskrunner, etc...)
!equote

## TITLE: Gbox Scripts Manual
## AUTHOR: D. Garmire at Department of EECS, University of Michigan -- Ann Arbor
## DATE: today
## TOC: on

===== Prerequisites =====

You mainly need a working copy of "Docker": "http://docker.com". It is used
exclusively to manage system configurations for running numerous tools
across numerous platforms.

===== Running =====

Generally a script is provided named `gendoc.sh` which executes an exposed bash function `gxdoc` 
from the `scripts` module. This script copies the `.do.txt` file to the `doc` container and executes `doconce`.
The result is copied back into the directory.
