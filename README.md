# Archbx

This is a simple utility to for running [toolbx](https://github.com/containers/toolbox) containers through [QEMU](https://github.com/qemu/qemu)'s emulation of other architectures. 

## Installation

First, install the required packages.

Fedora:
```{.bash}
dnf install qemu-user-binfmt qemu-user-static
```

Fedora (ostree-based):
```{.bash}
rpm-ostree install qemu-user-binfmt qemu-user-static
systemctl reboot
```

Then, run `./setup.sh` to register architectures. This is kind of copied from (multiarch/qemu-user-static)[https://github.com/multiarch/qemu-user-static], but their container does not work with Podman v4 yet.

## Usage

### Syntax

```{.bash}
./create.sh <toolbx name> <architecture> [image name]
```

### Example

```{.bash}
./create.sh arm aarch64 fedora-toolbox:36
```

