command=(
			docker run \
			--rm \
			-it \
			-v $(pwd):/app \
			composer/composer:latest 
			require --dev phpunit/phpunit ^6.0
)

echo ${command[@]}

${command[@]}
