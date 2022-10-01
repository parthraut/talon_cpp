
### control flow ###
make function:
	" () {"
	key(enter up cmd-right left left left)

while loop:
	"while () {"
	key(enter up cmd-right left left left)

for loop:
	"for (;;) {"
	key(enter up cmd-right left left left left left)

if:
	"if () {"
	key(enter up cmd-right left left left)

else:
	"else {"
	key(enter)

<user.type_var>: "{type_var} "

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
increment <user.format_text>:
	"++{format_text}"

decrement <user.format_text>: 
	"--{format_text}"

dereference <user.format_text>:
	"*{format_text}"

### vectors ###
vector [of] {user.c_types}:
	insert("vector<")
	insert(c_types)
	insert("> ")

vector [of] vector [of] {user.c_types}:
	insert("vector<vector<")
	insert(c_types)
	insert("> > ")

dot {user.vec_funcs_with_args}:
	".{vec_funcs_with_args}()"
	key(left)

dot {user.vec_funcs_no_args}:
	".{vec_funcs_no_args}()"

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

comment line <self.format_text>:
	"// {format_text}"

comment paragraph <user.format_text>:
    "/* {form} */"

	

