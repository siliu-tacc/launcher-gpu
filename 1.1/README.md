#Launcher-GPU
This launcher-GPU is upgraded from the original to specifically support GPU highthroughput computing (HTC) work  

# Launcher
[![Build Status](https://travis-ci.org/marshalllerner/launcher.svg?branch=master)](https://travis-ci.org/marshalllerner/launcher)
[![status](http://joss.theoj.org/papers/7b5df63cd8a40f557d66051695d300a7/status.svg)](http://joss.theoj.org/papers/7b5df63cd8a40f557d66051695d300a7)

Launcher is a utility for performing simple, data parallel, high throughput computing (HTC) workflows on clusters, massively parallel processor (MPP) systems, workgroups of computers, and personal machines.

## Installing Launcher
Launcher does not need to be compiled. Unpack the tarball or clone the repository in the desired directory. Then, set `LAUNCHER_DIR` to point to that location. Python 2.7 or greater and hwloc are required for full functionality. See INSTALL for more information.

## Verifying Installation

Included in the download is a file called "quickstart" found in the folder "tests". In order to verify installation, open the command line and find the launcher file, and then type "cd tests" and then press the enter key. If the quickstart file is in the correct place, there is no need for arguments, so type "./quickstart". However, if the Launcher directory is found somewhere else, type "./quickstart <Launcher directory>". The script will run in the terminal and if there are no errors in the process, the last line will say "Launcher: Done. Job exited without errors".

## Quickstart

Assume you have 8 GPUs to work with on 2 nodes, please set
-N 2
-n 8
in your job script!

* Set `LAUNCHER_JOB_FILE` to point to your job file. Example job files are provided in extras/examples.
* Be sure that `LAUNCHER_DIR` is set to the directory containing the launcher source files (user-installed ONLY. Not required if using system installed version of launcher).
* From the command-line or within your jobscript, run:`$LAUNCHER_DIR/paramrun`

## Available Environment Variables

You should set the following environment variables:

* `$LAUNCHER_JOB_FILE` is the file containing the jobs to run in your parametric submission.
* `$LAUNCHER_WORKDIR` is the directory where the launcher will execute. All relative paths will resolve to this directory.

## Job Submission

Copy the example job submission script `launcher.<sched>` to your working directory to use as a starting point for interfacing with the desired batch system. Note that this script provides some simple error checking prior to the actual submission to aid in diagnosing missing executables and misconfiguration.

The launcher/extras/batch-scripts directory contains several example submission scripts:
  * SGE:   launcher.sge
  * SLURM: launcher.slurm

## Referencing Launcher
If you are using Launcher, please remember to make a reference to it when publishing results. The file `paper/paper.bib` contains the BibTeX-formatted citation list. Please reference entry `Wilson:2014:LSF:2616498.2616533` (i.e., in LaTeX: `\cite{Wilson:2014:LSF:2616498.2616534}`).
