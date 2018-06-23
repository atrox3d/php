command=(
			docker run \
			--rm \
			-it \
			-v $(pwd):/app \
			composer/composer:latest \
			testdox
)

echo ${command[@]}

${command[@]} 