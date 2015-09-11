
Dockerfiles for an IPython notebook server with [GPy][] and [GPyOpt][]
installed on a [scipy stack][spy]. Scipy and numpy are compiled against a
compiled version of OpenBLAS, so should be relatively fast.

Heavily based on the [IPython docker-notebook repository][dnote]. Because
of this, the instructions for running the notebook server are pretty much
the same.

[gpy]: http://sheffieldml.github.io/GPy/
[gpyopt]: http://sheffieldml.github.io/GPyOpt/
[spy]: https://github.com/ipython/docker-notebook/tree/master/scipystack
[dnote]: https://github.com/ipython/docker-notebook
