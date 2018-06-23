command=(
			docker run \
			--rm \
			-it \
			-v $(pwd):/app \
			composer/composer:latest \
			test
)

echo ${command[@]}

${command[@]}
