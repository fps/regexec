# regexec

A simple text file preprocessor that uses regular expressions to match and then calls a command replacing the match group "markers" with the contents of the match groups and finally replaced the match in the input. All non-matching input is passed through as is.

# Example - Doing Math in a Textfile

This: 

<pre>
echo "hello, 1 + 2 = [bc 1 + 2]. But 4 - 4 = [bc 4 - 3]" | regexec -e "\[bc ([0-9]*) [+-] ([0-9]*)\]" -c "bc \0 \1 \2"
</pre>

should give 

<pre>
hello, 1 + 2 = 3. But 4 - 3 = 1.
</pre>

# Example - Including 
