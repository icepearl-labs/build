#!/bin/bash -e
_cur_dir="$(pwd)"
_stages_dir="${_cur_dir}"/stages

for i in "${_stages_dir}"/1/*.sh; do
    echo -e "\e[1;32m>>\e[m Stage 1 scripts [${i/-*}/$(ls "${_stages_dir}"/1/*.sh | wc -l)]" | sed -e "s|${_stages_dir}||;s|/1/||"
    sleep 5
    echo -e "\e[1;32m>>\e[m Running ${i/*-} script" | sed -e "s|${_stages_dir}||;s|/1/||;s|.sh||"
    "${i}" "${1}"
done
