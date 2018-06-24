#!/bin/bash


_docker_opts=()

for opt
do
	[ ${opt:0:2} = -d ] && {
		_dockeropt="${opt:2}"
		_docker_opts+=( "$_dockeropt" )
		echo "[$(basename ${BASH_SOURCE[0]})] : $_dockeropt"
		shift
	}
done

#echo _docker_opts: ${_docker_opts[@]}
#echo args        : $@
