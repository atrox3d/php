#!/bin/bash
. $(dirname $0)/.dockeroptions.sh

command=(
			docker run \
			${_docker_opts[@]} \
			--rm \
			-it \
			-v $(pwd):/app \
			-w /app \
			phpunit/phpunit:latest \
			"${@:--c .}"
)

echo ${command[@]}

${command[@]}

