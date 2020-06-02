#!/bin/bash
set -e

mkdir -p binaries
pushd binaries

# Install kubeval
wget https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz
tar xf kubeval-linux-amd64.tar.gz


# Install kube-score
wget https://github.com/zegl/kube-score/releases/download/v1.7.0/kube-score_1.7.0_linux_amd64
mv kube-score_1.7.0_linux_amd64 kube-score
chmod +x kube-score


wget https://github.com/cloud66-oss/copper/releases/download/2.0.1/linux_amd64_2.0.1
mv linux_amd64_2.0.1 copper
chmod +x copper

wget https://github.com/open-policy-agent/conftest/releases/download/v0.18.2/conftest_0.18.2_Linux_x86_64.tar.gz
tar xzf conftest_0.18.2_Linux_x86_64.tar.gz

popd


