#!/bin/bash

if [ ! -d "${HOME}/.bigbang/" ]; then
    mkdir -p ${HOME}/.bigbang/
fi

if [ ! -d "${HOME}/.bigluashell/" ]; then
    cp -r /.bigluashell ${HOME}/.bigluashell
fi

exec "$@"
