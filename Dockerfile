# Copyright (c) 2016, Dalenys
#
# Permission  to use,  copy, modify,  and/or  distribute this  software for  any
# purpose  with  or without  fee  is hereby  granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS"  AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO  THIS SOFTWARE INCLUDING  ALL IMPLIED WARRANTIES  OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL  THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR  CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER  RESULTING FROM
# LOSS OF USE, DATA OR PROFITS,  WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING  OUT OF  OR  IN CONNECTION  WITH  THE USE  OR
# PERFORMANCE OF THIS SOFTWARE.

FROM dalenys/php
MAINTAINER Dalenys

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      build-essential \
      libffi-dev \
      libgraphviz-dev \
      libldap2-dev \
      libmysqlclient-dev \
      libssl-dev \
      libsasl2-dev \
      libxml2-dev \
      libxslt1-dev \
      pkg-config \
      python \
      python-pip \
      python-dev \
      python-setuptools \
      python-virtualenv \
      ruby1.9.1 \
      ruby1.9.1-dev

# get node.js (https://nodejs.org/)
RUN curl -Ls https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key --keyring /etc/apt/trusted.gpg.d/nodejs-keyring.gpg add - && \
    echo 'deb https://deb.nodesource.com/node_5.x wheezy main' > /etc/apt/sources.list.d/nodejs.list && \
    apt-get update && \
    apt-get install -y \
      nodejs rlwrap

# get bower (http://bower.io/)
RUN npm install -g bower

# get grunt (http://gruntjs.com/)
RUN npm install -g grunt-cli

# get gulp (http://gulpjs.com/)
RUN npm install -g gulp

# get jekyll (http://jekyllrb.com/)
RUN gem install jekyll -v 2.5.3

# pip (https://pypi.python.org/pypi/pip)
RUN pip install --upgrade pip

# clean
RUN apt-clean
# EOF
