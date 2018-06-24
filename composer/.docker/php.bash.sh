command=( 	
			docker run \
			--rm \
			-it \
			--user $(id -u):$(id -g) \
			-v /etc/passwd:/etc/passwd \
			-v $HOME:$HOME \
			-v ${2:-$(pwd)}:/app \
			-w ${3:-/app} \
			php:cli \
			${1:-/bin/bash}
#			php \
#			"$@"
)

echo ${command[@]}

${command[@]}
