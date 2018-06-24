#!/bin/bash


_docker_opts=()
_command_opts=()

while getopts "d:e:-:" opt
do
	_dockeropt=
	_commandopt=
	case "$opt" in
		d)
			_dockeropt="$OPTARG"
		;;
		
		e)
			_dockeropt="--entrypoint=$OPTARG"
		;;
		-)
			_commandopt="-$opt$OPTARG"
		;;
	esac
	[ ${_dockeropt:-null} != null ] && {
		_docker_opts+=( "$_dockeropt" )
		echo "[$(basename ${BASH_SOURCE[0]})] : $_dockeropt"
	}

	[ ${_commandopt:-null} != null ] && {
		_command_opts+=("$_commandopt")
		echo "[$(basename ${BASH_SOURCE[0]})] : $_commandopt"
	}

done
shift "$((OPTIND-1))"

#echo _docker_opts: ${_docker_opts[@]}
#echo args        : $@
