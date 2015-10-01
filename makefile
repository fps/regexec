doc:
	cat README.md.in | ./regexec -e "\[usage\]" -c "./regexec -h" -n 1 > README.md

