#!/bin/bash -e
_cur_dir="$(pwd)"
echo -e "\e[1;32m>>\e[m Building docker image as ${_icepearl_arch}"
sleep 3
"${_cur_dir}"/build.sh "${1}" "${2}"
