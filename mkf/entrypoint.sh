#!/bin/bash

if [ ! -d "${HOME}/.mkf/" ]; then
    mkdir -p ${HOME}/.mkf/
fi

if [ ! -f "${HOME}/.mkf/bigbang.conf" ]; then
    cp /bigbang.conf ${HOME}/.mkf/bigbang.conf
fi

exec "$@"
