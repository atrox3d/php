command=( 	
			docker run \
			--rm \
			-it \
			-v ${2:-$(pwd)}:/app \
			-w ${3:-/app} \
			php:cli \
			${1:-/bin/bash} \
#			php \
#			"$@"
)

echo ${command[@]}

${command[@]}
