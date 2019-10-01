#!/bin/bash

# Backup environment variables changed
export COMPILERS_BACKUP_CPPFLAGS="${CPPFLAGS}"
export COMPILERS_BACKUP_CFLAGS="${CFLAGS}"
export COMPILERS_BACKUP_LDFLAGS="${LDFLAGS}"

# Include headers from `CONDA_PREFIX`
export CPPFLAGS="${CPPFLAGS} -I${CONDA_PREFIX}/include"
export CFLAGS="${CFLAGS} -I${CONDA_PREFIX}/include"

# Search for libraries in the `CONDA_PREFIX` and set the `rpath` accordingly
export LDFLAGS="${LDFLAGS} -L${CONDA_PREFIX}/lib"
export LDFLAGS="${LDFLAGS} -Wl,-rpath,${CONDA_PREFIX}/lib"
