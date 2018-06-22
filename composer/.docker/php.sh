echo docker run --rm --user $(id -u) -v ${2:-$(pwd)}:/app -w ${3:-/app} php:cli php "$1"
docker run --rm --user $(id -u) -v ${2:-$(pwd)}:/app -w ${3:-/app} php:cli php "$1"
