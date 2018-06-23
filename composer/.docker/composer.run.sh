#|bin/bash
command=(
			docker run \
			--rm \
			-it \
			-v $(pwd):/app \
			composer/composer:latest \
			$1
		)

echo ${command[@]}
${command[@]}

