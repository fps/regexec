.PHONY: all install

all: doc

doc:
	cat README.md.in | ./regexec -e "\[usage\]" -c "./regexec -h" -n 1 > README.md

install:
	install -d /usr/bin/
	install regexec /usr/bin
