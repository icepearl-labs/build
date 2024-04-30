#!/bin/bash -e
_cur_dir="$(pwd)"
_sources_dir="${_cur_dir}"/.sources
_toolchain_dir="${_cur_dir}"/.toolchain

echo "\e[1;32m>>\e[m Cloning gmp"
hg clone https://gmplib.org/repo/gmp/ "${_sources_dir}"/stage1/gmp
echo "\e[1;32m>>\e[m Bootstrapping gmp"
./.bootstrap
echo "\e[1;32m>>\e[m "
