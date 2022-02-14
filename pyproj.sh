#!/usr/bin/env bash

pyproj() {
        mkdir "${1}" && cd "${1}"
	
        virtualenv venv

	curl https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore --output .gitignore
	
	echo "# ${1}" > README.md
	
	git init
	git add README.md .gitignore
	git commit -m "first commit"
}

