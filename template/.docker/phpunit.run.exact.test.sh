#!/bin/bash
#command=(
#			docker run \
#			--rm \
#			-it \
#			-v $(pwd):/app \
#			phpunit/phpunit:latest \
#			"${@:---bootstrap src/ExampleClass.php tests/ExampleTest.php}"
#)
#
#echo ${command[@]}
#
#${command[@]}
$(dirname $0)/phpunit.run.sh --bootstrap src/ExampleClass.php tests/ExampleTest.php

