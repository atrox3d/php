#!/bin/bash


_docker_opts=()


while getopts "d:e:" opt
do
	_dockeropt=
	case "$opt" in
		d)
			_dockeropt="$OPTARG"
		;;
		
		e)
			_dockeropt="--entrypoint=$OPTARG"
		;;
	esac
	[ ${_dockeropt:-null} != null ] && {
		_docker_opts+=( "$_dockeropt" )
		echo "[$(basename ${BASH_SOURCE[0]})] : $_dockeropt"
	}
done
shift "$((OPTIND-1))"

#echo _docker_opts: ${_docker_opts[@]}
#echo args        : $@
