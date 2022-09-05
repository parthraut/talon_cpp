function <user.type_var>:
	user.insert_between("{type_var}(", ") {\n\t\n}")

while:
	user.insert_between("while (", ") {\n\t\n}")

for loop:
	user.insert_between("for (", ";;) {\n\t\n}")

<user.type_var>: "{type_var}"

{user.math_ops}: "{math_ops}"

{user.logical_ops}: "{logical_ops}"

set to: " = "
scope: "::"

parens:
	user.insert_between("(", ")")

next: ";\n"

# unary functions
increment <word>: "++{word}"

decrement <word>: "--{word}"

dereference <word>:
	"*{word}"

# vector1:
vector [of] [{user.c_types}]:
	"vector<{c_types}>"

dot {user.vec_funcs}:
	".{vec_funcs}()"

[at] index:
	user.insert_between("[", "]")

