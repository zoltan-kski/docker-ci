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

FROM dalenys/debian:wheezy
MAINTAINER Dalenys

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
    apt-get upgrade -qq -y && \
    apt-get install -qq -y \
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
      ruby \
      ruby-dev

# pip (https://pypi.python.org/pypi/pip)
RUN pip install --upgrade pip

# clean
RUN apt-clean
# EOF
