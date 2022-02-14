#!/usr/bin/env bash

pyproj() {
	# create dir and go to it
        mkdir "${1}" && cd "${1}"
	
	# create a virtual enviroment
        virtualenv venv
	source venv/bin/activate
	
	# install code  formats
	pip install black isort flake8
	deactivate
	
	# create README.md file
	echo "# ${1}" > README.md
	
	# initialize git
	git init

}

