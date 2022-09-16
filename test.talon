








### control flow ###
function <user.type_var>:
	user.insert_between("{type_var}(", ") {\n\t\n")

while:
	user.insert_between("while (", ") {\n\t\n")

for loop:
	user.insert_between("for (", ";;) {\n\t\n")

if:
	user.insert_between("if (", ") {\n\t\n ")
else:
	user.insert_between("else {\n\t","\n")

<user.type_var>: "{type_var}"

{user.math_ops}: "{math_ops}"

{user.logical_ops}: "{logical_ops}"

set to: " = "
scope: "::"

parens:
	user.insert_between("(", ")")
braces:
	user.insert_between("{", "}")
curly brackets:
	user.insert_between("{", "}")
brackets:
	user.insert_between("[", "]")
square brackets:
	user.insert_between("[", "]")

next: ";\n"

#### unary functions ###
increment <user.snk>: "++{snk}"

decrement <user.snk>: "--{snk}"

dereference <user.snk>:
	"*{snk}"

### vectors ###
vector [of] {user.c_types} [<user.snk>]:
	insert("vector<")
	insert(c_types)
	insert("> ")
	insert(snk or "")

vector [of] vector [of] {user.c_types} [<user.snk>]:
	insert("vector<vector<")
	insert(c_types)
	insert("> > ")
	insert(snk or "")

dot {user.vec_funcs_with_args}:
	user.insert_between(".{vec_funcs_with_args}(",")")

dot {user.vec_funcs_no_args}:
	insert(".{vec_funcs_no_args}(",")")

[at] index:
	user.insert_between("[", "]")

