#!/usr/bin/env bash

# most recent scipy
git clone -q git://github.com/scipy/scipy.git
cp /tmp/scipy-site.cfg scipy/site.cfg

for PYTHONVER in 2 3 ; do
  PYTHON="python$PYTHONVER"
  PIP="pip$PYTHONVER"
  $PIP install --upgrade pip
  $PIP install --upgrade cython
  # remove old scipy
  $PIP uninstall --yes scipy

  (cd scipy && $PYTHON setup.py install)
  $PIP install nose
  $PIP install six
  $PIP install --no-deps git+https://github.com/SheffieldML/GPy.git
  $PIP install --no-deps git+https://github.com/SheffieldML/GPyOpt.git
done

# Reduce the image size
apt-get autoremove -y
apt-get clean -y

cd /
rm -rf /tmp/build
