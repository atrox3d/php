command=( 	
			docker run \
			--rm \
			--user $(id -u) \
			-v /etc/passwd:/etc/passwd \
			-v /home/nigga:/home/nigga \
			-v ${2:-$(pwd)}:/app \
			-w ${3:-/app} \
			php:cli \
			php \
			"$@"
		)
echo ${command[@]}
${command[@]}
#docker run --rm --user $(id -u) -v ${2:-$(pwd)}:/app -w ${3:-/app} php:cli php "$1"
