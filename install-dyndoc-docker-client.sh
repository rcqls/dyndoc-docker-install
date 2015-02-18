#!/bin/bash
if [ "$1" = "" ]; then
	DYNDOC_DOCKER_HOME=~/dyndoc-docker
else
	DYNDOC_DOCKER_HOME=$1
fi

mkdir -p ${DYNDOC_DOCKER_HOME}
mkdir -p ${DYNDOC_DOCKER_HOME}/library/{R,dyndoc,ruby}
mkdir -p ${DYNDOC_DOCKER_HOME}/proj/rooms

mkdir -p ${DYNDOC_DOCKER_HOME}/.install
cd ${DYNDOC_DOCKER_HOME}/.install
git clone https://github.com/rcqls/dyndoc-docker-install.git
cd ${DYNDOC_DOCKER_HOME}
ln -sf .install/dyndoc-docker-install/client/etc

echo "To finalize your installation, add in your .bash_profile (or equivalent):"
echo "   export DYNDOC_DOCKER_HOME=${DYNDOC_DOCKER_HOME}"
echo "   . \$DYNDOC_DOCKER_HOME/etc/init/ddyn.sh"

