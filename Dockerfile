# Copyright (c) 2015, Rentabiliweb Group
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

FROM rentabiliweb/php
MAINTAINER Rentabiliweb Group

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      build-essential \
      libgraphviz-dev \
      libldap2-dev \
      libmysqlclient-dev \
      libssl-dev \
      libsasl2-dev \
      pkg-config \
      python \
      python-pip \
      python-dev \
      python-setuptools \
      python-virtualenv \
      ruby1.9.1 \
      ruby1.9.1-dev

# get phpunit (http://phpunit.de/)
RUN curl -Ls -o /usr/local/bin/phpunit.phar https://phar.phpunit.de/phpunit.phar && \
    chmod 755 /usr/local/bin/phpunit.phar && \
    ln -s /usr/local/bin/phpunit.phar /usr/local/bin/phpunit

# get node.js (http://nodejs.org/)
RUN curl -Ls https://deb.nodesource.com/setup_0.12 | bash && \
    apt-get update && \
    apt-get install -y nodejs

# get npm (http://www.npmjs.com/)
RUN curl -Ls curl https://www.npmjs.org/install.sh | bash

# get bower (http://bower.io/)
RUN npm install -g bower

# get grunt (http://gruntjs.com/)
RUN npm install -g grunt-cli

# get gulp (http://gulpjs.com/)
RUN npm install -g gulp

# get jekyll (http://jekyllrb.com/)
RUN gem install jekyll

# pip (https://pypi.python.org/pypi/pip)
RUN pip install --upgrade pip

# clean
RUN find /var/cache/apt -type f -delete && \
    find /var/lib/apt/lists -type f -delete
# EOF
