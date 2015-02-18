#!/bin/bash

DYNDOC_DOCKER_HOME=~/dyndoc-docker2
mkdir -p ${DYNDOC_DOCKER_HOME}/etc
mkdir -p ${DYNDOC_DOCKER_HOME}/library/{R,dyndoc,ruby}
mkdir -p ${DYNDOC_DOCKER_HOME}/proj/rooms

mkdir -p ${DYNDOC_DOCKER_HOME}/.install
cd ${DYNDOC_DOCKER_HOME}/.install
git clone http://github.com/rcqls/dyndoc-docker


