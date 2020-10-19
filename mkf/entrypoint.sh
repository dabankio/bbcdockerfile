#!/bin/bash

if [ ! -d "${HOME}/.mkf/" ]; then
    mkdir -p ${HOME}/.mkf/
fi

if [ ! -f "${HOME}/.mkf/mkf.conf" ]; then
    cp /mkf.conf ${HOME}/.mkf/mkf.conf
fi

exec "$@"
