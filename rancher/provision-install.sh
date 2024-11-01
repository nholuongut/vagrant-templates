#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Nho Luong
#  Date: 2023-07-11 02:57:14 +0100 (Tue, 11 Jul 2023)
#
#  https://github.com/nholuongut/vagrant-templates
#
#  License: see accompanying nholuongut LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/in/nholuong
#

# export INSTALL_RKE2_TYPE="agent"

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$srcdir"

# Install environment variables:
#
#   https://docs.rke2.io/install/configuration#configuring-the-linux-installation-script
#
curl -sfL https://get.rke2.io | sh -

server_or_agent="server"
if [ "${INSTALL_RKE2_TYPE:-}" = "agent" ]; then
    server_or_agent="agent"
fi

systemctl enable rke2-"$server_or_agent".service

systemctl start rke2-"$server_or_agent".service

journalctl -u rke2-"$server_or_agent" -f &

sleep 30

# also /etc/rancher/rke2/config.yaml.d/*.yaml
#export RKE2_CONFIG_FILE=/etc/rancher/rke2/config.yaml

export KUBECONFIG=/etc/rancher/rke2/rke2.yaml

# installs kubectl, crictl, ctr here:
export PATH="$PATH":/var/lib/rancher/rke2/bin

# installs rke2-killall.sh, rke2-uninstall.sh here:
export PATH="$PATH":/opt/rke2/bin
if [ -n "${INSTALL_RKE2_TAR_PREFIX:-}" ]; then
    export PATH="$PATH":"$INSTALL_RKE2_TAR_PREFIX/bin"
fi

TMOUT=300

while ! kubectl get nodes; do
    echo
    sleep 10
done
