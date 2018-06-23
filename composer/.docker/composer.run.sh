#|bin/bash
command=(
			docker run \
			--rm \
			-it \
			-v $(pwd):/app \
			composer/composer:latest \
			"$@"
)

echo ${command[@]}

${command[@]}

