# regexec

Note: Even though the tool expects input from <code>stdin</code> it consumes the whole input before starting to process because regexes :)

Note: With default parameters it replaces <code>[include somefile.txt]</code> by the contents of <code>somefile.txt</code>. See the example below.

# Usage

<code>README.md</code> was generated from <code>README.md.in</code> via:

<pre>
cat README.md.in | ./regexec -e "\[usage\]" -c "./regexec -h" -n 1 > README.md
</pre>

This way you get this:

<pre>
usage: regexec [-h] [-e E] [-n N] [-c C] [-v V]

optional arguments:
  -h, --help  show this help message and exit
  -e E        The (python2) regular expression (default: \[include (.+?)\])
  -n N        How many characters to strip from the end of command outputs -
              useful to remove trailing newlines (default: 0)
  -c C        The command to run with the expression's match groups as
              arguments and who's output replaces the match (default: cat \1)
  -v V        The verbosity level (default: 0)
</pre>

# Example - Including Textfiles into a Textfile

Given <code>text1.txt</code>:

<pre>
Lalala
</pre>

and <code>text2.txt</code>:

<pre>
Lululu
</pre>

and <code>text3.txt</code>:

<pre>
This text should go

[include text1.txt]

and then

[include text2.txt]
</pre>

this:

<pre>
cat text3.txt | regexec -n 1
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
echo "Yo, 1 + 2 = [bc 1 + 2]. But 4 - 3 = [bc 4 - 3]" | regexec -e "\[bc (.*?)\]" -c "echo  \1  | bc"  -n 1
</pre>

should give 

<pre>
Yo, 1 + 2 = 3. But 4 - 3 = 1.
</pre>



