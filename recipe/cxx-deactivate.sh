#!/bin/bash

# Restore environment variables from backups
export CXXFLAGS="${COMPILERS_BACKUP_CXXFLAGS}"

# Clear backups
unset COMPILERS_BACKUP_CXXFLAGS
