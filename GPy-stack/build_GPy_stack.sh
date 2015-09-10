#!/usr/bin/env bash

for PYTHONVER in 2 3 ; do
  PIP="pip$PYTHONVER"
  REQ="requirements.txt.$PYTHONVER"
  $PIP install --upgrade pip

  $PIP install nose
  $PIP install gpy
  $PIP install gpyopt
done

# Reduce the image size
apt-get autoremove -y
apt-get clean -y
