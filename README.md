# docker-ci ![License badge][license-img] [![Docker badge][docker-img]][docker-url]

## Overview

Docker image for Continuous Integration (eg: with GitLab CI)

## Description

This images embed :

- php (https://php.net/)
- phpunit (http://phpunit.de/)
- node.js (https://nodejs.org/)
- npm (http://www.npmjs.com/)
- bower (http://bower.io/)
- grunt (http://gruntjs.com/)
- gulp (http://gulpjs.com/)
- jekyll (http://jekyllrb.com/)

## Usage

You  can choose  you PHP  version  with php-choose-version  binary. The  default
version is 5.4 from [Dotdeb](https://www.dotdeb.org/).

### Run phpunit

```bash
$ docker run \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/ci \
	 bash -c 'php-choose-version 5.5 && cd /path/to/bind/in/container && PHPUNIT STUFF'
```

### Run node.js

```bash
$ docker run \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/ci \
	 bash -c 'cd /path/to/bind/in/container && NODE.JS STUFF'
```

### Run npm

```bash
$ docker run \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/ci \
	 bash -c 'cd /path/to/bind/in/container && NPM STUFF'
```

### Run bower

```bash
$ docker run \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/ci \
	 bash -c 'cd /path/to/bind/in/container && BOWER STUFF'
```

### Run grunt

```bash
$ docker run \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/ci \
	 bash -c 'cd /path/to/bind/in/container && GRUNT STUFF'
```

### Run gulp

```bash
$ docker run \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/ci \
	 bash -c 'cd /path/to/bind/in/container && GULP STUFF'
```

## Development

Feel free to contribute on GitHub.

```
    ╚⊙ ⊙╝
  ╚═(███)═╝
 ╚═(███)═╝
╚═(███)═╝
 ╚═(███)═╝
  ╚═(███)═╝
   ╚═(███)═╝
```

[license-img]: https://img.shields.io/badge/license-ISC-blue.svg "License"
[docker-img]: https://img.shields.io/docker/pulls/rentabiliweb/ci.svg "Docker"
[docker-url]: https://registry.hub.docker.com/u/rentabiliweb/ci "Docker"
