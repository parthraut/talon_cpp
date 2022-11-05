
### control flow ###
make function:
	# " () {"
	# key(enter up fn-right left left left)

	user.insert_between(" (", ") {")


while loop:
	user.insert_between("while (", ") {")

for loop:
	user.insert_between("for (", "; ; ) {")

if:
	user.insert_between("if (", ") {")
	
else:
	"else {"
	key(enter)

{self.c_types} [{self.c_pointers}] <user.text>:
	ptr = c_pointers or " "
	ptr = " " + ptr
	ptr = ptr + " "
	text = user.snk(text)
	text = ptr + text
	text = c_types + text
	insert(text)

static {self.c_types} [{self.c_pointers}] <user.text>:
	ptr = c_pointers or " "
	ptr = " " + ptr
	ptr = ptr + " "
	text = user.snk(text)
	text = ptr + text
	text = c_types + text
	text = "static " + text
	insert(text)

(const | constant) {self.c_types} [{self.c_pointers}] <user.text>:
	ptr = c_pointers or " "
	ptr = " " + ptr
	ptr = ptr + " "
	text = user.snk_cap(text)
	text = ptr + text
	text = c_types + text
	text = "const " + text
	insert(text)

(const | constant) static {self.c_types} [{self.c_pointers}] <user.text>:
	ptr = c_pointers or " "
	ptr = " " + ptr
	ptr = ptr + " "
	text = user.snk_cap(text)
	text = ptr + text
	text = c_types + text
	text = "static " + text
	text = "const " + text
	insert(text)



{user.math_ops}: "{math_ops}"

{user.logical_ops}: "{logical_ops}"

equeft: " = "

standard:
	"std"

scope: "::"

parens:
	"()"
	key(left)

braces:
	"{}"
	key(left)

curly brackets:
	"{}"
	key(left)

brackets:
	"[]"
	key(left)

square brackets:
	"[]"
	key(left)

next: 
	";"
	key(enter)

#### unary functions ###
increment <user.text>:
	text = user.snk(text)
	text = "++" + text
	insert(text)

decrement <user.text>: 
	text = user.snk(text)
	text = "--" + text
	insert(text)

dereference <user.text>:
	text = user.snk(text)
	text = "*" + text
	insert(text)

reference <user.text>:
	text = user.snk(text)
	text = "&" + text
	insert(text)

follow to <user.text>:
	text = user.snk(text)
	text = "->" + text
	insert(text)

### vectors ###
vector [of] {user.c_types}:
	insert("vector<")
	insert(c_types)
	insert("> ")

vector [of] vector [of] {user.c_types}:
	insert("vector<vector<")
	insert(c_types)
	insert("> > ")

dot {user.methods_with_args}:
	insert(".{methods_with_args}()")
	key(left)

dot {user.methods_no_args}:
	".{methods_no_args}()"

[at] index:
	"[]"
	key(left)

### string ### 

string:
	"string"

literal:
	""" "" """

put to: 
	"<<"

get from:
	">>"

(sea | see) out:
	"cout"

(sea | see) in:
	"cin"

sin:
	"cin"

(end | and | on) line:
	"endl"

input stream:
	"istream"

output stream:
	"ostream"

input output stream:
	"iostream"

io stream:
	"iostream"

file stream:
	"fstream"

input file stream:
	"ifstream"

output file stream:
	"ofstream"

string stream:
	"stringstream"

input string stream:
	"istringstream"

output string stream:
	"ostringstream"

### preludes ###

include {user.headers}:
	"#include<{headers}>\n"

using:
	"using namespace "

comment line:
	# text = text
	# modified = "// " + text
	# modified = modified + " ##"
	text = "// "
	insert(text)
	mode.enable("dictation")

comment paragraph:
    "/* \n"
	key(up right right righ 10 theat)
	mode.enable("dictation")

### pre-processor commands ###
if ((not defined) | (undefined) | undef):
	text = "#ifndef\n\n"
	text = text + "#endif"
	insert(text)

define:
	"#define "

### generic Classes, methods etc ###

public:
	"public:\n"

private:
	"private:\n"

protected:
	"protected:\n"

class <user.text>:
	text = user.first_cap(text)
	text = "class " + text
	text = text + " {\n"
	insert(text)
