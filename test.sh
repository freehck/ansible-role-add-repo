#!/bin/bash
set -ex
for dist in ubuntu1804 debian10 centos7 centos8; do
    MOLECULE_DISTRO=$dist molecule test
done
