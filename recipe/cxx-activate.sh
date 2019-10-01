#!/bin/bash

# Backup environment variables changed
export COMPILERS_BACKUP_CXXFLAGS="${CXXFLAGS}"

# Include headers from `CONDA_PREFIX`
export CXXFLAGS="${CXXFLAGS} -I${CONDA_PREFIX}/include"
