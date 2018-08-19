#!/bin/bash

set -e

# ensure that we're running as root
if [[ $(id -u) != 0 ]]; then
    echo "This tool must run as the root user. Exiting"
    exit -1
fi

# get the distribution ID
distribution=$(lsb-release -i | awk -e '{ print tolower($3) }')

pkg_mgr=''
pkg_tool=''
if [[ -x '/usr/bin/zypper' && "${DISTRO}" == 'opensuse' ]]; then
    pkg_mgr='zypper'
    pkg_tool='rpm'
fi

function install_pkg () {
    local pkgname=${1}

    if $pkg_tool -q $pkgname 2>&1 >/dev/null; then
        $pkg_mgr in $pkgname 2>&1 >/dev/null
    else
        echo "Package $pkgname is already installed"
    fi
}

function mdss_deps_list () {
    local distribution=${1}

    if [[ $distribution == 'opensuse' ]]; then
        echo "
    fi
}

function main () {
    local -a pkgs

    if [[ $distribution == 'opensuse' ]]; then
        pkgs=$(mdss_deps_list $distribution)
    fi
}

main()

