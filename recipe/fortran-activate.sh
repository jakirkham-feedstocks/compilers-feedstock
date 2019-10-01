#!/bin/bash

# Backup environment variables changed
export COMPILERS_BACKUP_FORTRANFLAGS="${FORTRANFLAGS}"
export COMPILERS_BACKUP_FFLAGS="${FFLAGS}"

# Include headers from `CONDA_PREFIX`
export FORTRANFLAGS="${FORTRANFLAGS} -I${CONDA_PREFIX}/include"
export FFLAGS="${FFLAGS} -I${CONDA_PREFIX}/include"

# Search for libraries in the `CONDA_PREFIX` and set the `rpath` accordingly
export LDFLAGS="${LDFLAGS} -L${CONDA_PREFIX}/lib"
export LDFLAGS="${LDFLAGS} -Wl,-rpath,${CONDA_PREFIX}/lib"
