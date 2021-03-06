#!/bin/sh
set -e

if [ -f /etc/debian_version ]; then
  apt-get update
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    curl \
    python \
    python-apt \
    systemd
  apt-get clean
elif [ -f /etc/redhat-release ]; then
  if [ -f /etc/centos-release ]; then
    yum install -y epel-release
  fi
  yum update -y --exclude=kernel*
  yum install -y \
    curl \
    python \
    python3-pip \
    python2-dnf \
    systemd
  yum clean all
else
  echo "Operating system is not supportet."
  exit 1
fi
