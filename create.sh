#!/bin/bash

TOOLBX_NAME="${1}"
TOOLBX_ARCH="${2}"

if [ "${3}" = "" ]; then
	TOOLBX_IMG="fedora-toolbox:36"
else
	TOOLBX_IMG="${3}"
fi

toolbox create --image=$(podman pull --arch="$TOOLBX_ARCH" -q "$TOOLBX_IMG") "$TOOLBX_NAME"
