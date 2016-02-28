#!/bin/sh

set -e
set -x

_MY_PWD=$(pwd)
_MY_GPG_KEY=3B244E51
_BUILDDIR=debuild

enter_do_build()
{
    enter_do_build_CURR_PWD=$(pwd)
    cd $1
    debian/rules get-orig-source
    debuild -tc -i -k$_MY_GPG_KEY
    cd $enter_do_build_CURR_PWD
}

start_build()
{
    start_build_CURR_PWD=$(pwd)
    cd $_BUILDDIR
    for i in *; do
        if [ -n $i ] && [ -d $i ]; then
            enter_do_build $i
        fi
    done
    cd $start_build_CURR_PWD
}

start_build
