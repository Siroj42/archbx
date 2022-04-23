#!/bin/bash

sudo podman run --rm --privileged multiarch/qemu-user-static --reset -p yes --credential yes
