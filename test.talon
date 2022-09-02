function <user.type_var>:
	user.insert_between("{type_var}(", ") {\n\t\n}")

loop while:
	user.insert_between("while (", ") {\n\t\n}")

<user.type_var>: "{type_var}"

{user.math_ops}: "{math_ops}"

{user.logical_ops}: "{logical_ops}"

assign: " = "


parens:
	user.insert_between("(", ")")

next: ";\n"


# unary functions
increment <word>: "++{word}"

decrement <word>: "--{word}"

dereference <word>:
	"*{word}"

<word>: "{word}"

Void buggy(int * array, int size) {
	int * pot = array + size - 1;
	while ((pot != array) && (pot <= array) && (array <= array + size - 1)) {
	
}
}

