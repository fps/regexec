# regexec
this: 'echo "hello, 1 + 2 = [bc 1 + 2]. But 4 - 4 = [bc 4 - 3]" | regexec -e "\[bc ([0-9]*) [+-] ([0-9]*)\]" -c "bc 
