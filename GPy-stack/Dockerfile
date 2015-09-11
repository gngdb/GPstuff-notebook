FROM ipython/scipystack

MAINTAINER Gavin Gray <gavingray1729@gmail.com>

# install requirements for many python packages
RUN apt-get install build-essential python-dev

ADD build_GPy_stack.sh /tmp/build_GPy_stack.sh
ADD scipy-site.cfg /tmp/scipy-site.cfg
RUN bash /tmp/build_GPy_stack.sh

# Clean up from build
RUN rm -f /tmp/build_GPy_stack.sh
