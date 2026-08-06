#!/bin/bash 
# copies run.sh to your local bin

docker="run.sh"
web="run-web.sh"
ro="run-readonly.sh"

cd "$(dirname $0)"/../
set -ex

chmod ugo+rx *.sh

if sudo touch /usr/bin/.TOUCH 2>/dev/null ; then 
	sudo rm /usr/bin/.TOUCH

	sudo cp $docker /usr/bin/herdr-docker
	sudo cp $docker /usr/bin/herdr-d
	sudo cp $web /usr/bin/herdr-web
	sudo cp $ro /usr/bin/herdr-ro
fi

if sudo touch /usr/local/bin/.TOUCH 2>/dev/null ; then
	sudo rm /usr/local/bin/.TOUCH

	sudo cp $docker /usr/local/bin/herdr-docker
	sudo cp $docker /usr/local/bin/herdr-d
	sudo cp $web /usr/local/bin/herdr-web
	sudo cp $ro /usr/local/bin/herdr-ro
fi


