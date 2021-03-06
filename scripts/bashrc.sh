#!/bin/bash

f="/home/vagrant/.bashrc"
r=$( echo ${RANDOM} | md5sum - )
if ! grep -q "${r}" "${f}"; then

cat - >> "${f}" <<EOF
# Configured by shell ${r}
PS1="[\u@\h] \[\e[1;34m\]`date +%H:%M:%S`\[\e[0m\] \[\e[1;32m\][ \w ]\[\e[0m\] \n \[\e[1;31m\]-> \[\e[0m\]"
PS2=" \[\e[1;31m\]-> \[\e[0m\]"
PATH="\${HOME}/bin:\${PATH}"
EOF

fi