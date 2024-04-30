#!/bin/bash -e
_cur_dir="$(pwd)"
_build_dir="${_cur_dir}"/build

for i in sources toolchain chroot; do
    mkdir -p "${_cur_dir}/.${i}"
done

for i in "${_build_dir}"/*.sh; do
    echo -e "\e[1;32m>>\e[m Running scripts [${i}/$(ls "${_build_dir}"/*.sh | wc -l)]" | sed -e "s|${_build_dir}||;s|/||;s|.sh||"
    sleep 5
    echo -e "\e[1;32m>>\e[m Entering stage ${i}" | sed -e "s|${_build_dir}||;s|/||;s|.sh||"
    sleep 3
    "${i}"
    echo -e "\e[1;32m>>\e[m Leaving stage ${i}" | sed -e "s|${_build_dir}||;s|/||;s|.sh||"
    sleep 5
done
