# regexec

# Example - Including Textfiles into a Textfile

Given <code>file1.txt</code>:

<pre>
Lalala
</pre>

and <code>file2.txt</code>:

<pre>
Lululu
</pre>

and <code>file3.txt</code>

<pre>
This text should go

[include file1.txt]

and then

[include file2.txt]
</pre>

this:

<pre>
cat file3.txt | regexec -e "\[include ([a-zA-Z0-9/]*)\]" -c "cat \0"
</pre>

should give:

<pre>
This text should go

Lalala

and then

Lululu
</pre>

# Example - Doing Math in a Textfile

This: 

<pre>
echo "hello, 1 + 2 = [bc 1 + 2]. But 4 - 4 = [bc 4 - 3]" | regexec -e "\[bc ([0-9]*) [+-] ([0-9]*)\]" -c "bc \0 \1 \2"
</pre>

should give 

<pre>
hello, 1 + 2 = 3. But 4 - 3 = 1.
</pre>


