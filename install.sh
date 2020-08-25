#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

case $1 in
	linux/amd64)
		wget --no-check-certificate -O cni-plugins.tgz https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-amd64-v0.8.6.tgz
	;;
	linux/arm/v7)
		wget --no-check-certificate -O cni-plugins.tgz https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-arm-v0.8.6.tgz
	;;
	linux/arm64/v8)
		wget --no-check-certificate -O cni-plugins.tgz https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-arm64-v0.8.6.tgz
	;;
esac

mkdir -p /opt/cni-installer/bin

tar xvf cni-plugins.tgz -C /opt/cni-installer/bin
