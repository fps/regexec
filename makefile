.PHONY: all install

VERSION=1.0.1

all: doc

doc:
	cat README.md.in | ./regexec -e "\[usage\]" -c "./regexec -h" -n 1 > README.md
	cat setup.py.in | ./regexec -e "\[version\]" -c "echo ${VERSION}" -n 1 > setup.py
	cat default.nix.in | ./regexec -e "\[version\]" -c "echo ${VERSION}" -n 1 > default.nix
install:
	# install -d /usr/bin/
	# install regexec /usr/bin
