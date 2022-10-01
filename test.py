from talon import Context, Module, actions, settings

mod = Module()
ctx = Context()

ctx.lists["user.headers"] = {
    "vector": "vector",
    "assert": "assert.h",
    "math": "math.h",
    "exception": "exception",
    "string": "string",
    "list": "lsit",
    "deque": "deque",
    "map": "map",
    "unordered map": "unordered_map",
    "iterator": "iterator",
    "see math": "cmath",
    "io stream": "iostream",
    "file stream": "fstream",
    "string stream": "sstream",
}

ctx.lists["user.c_types"] = {
    "character": "char",
    "char": "char",
    "short": "short",
    "long": "long",
    "int": "int",
    "integer": "int",
    "void": "void",
    "double": "double",
    "struct": "struct",
    "struck": "struct",
    "num": "enum",
    "float": "float",
    "auto": "auto",
    "otto": "auto",
    "bool": "bool",
    "boolean": "bool",
}

ctx.lists["user.containers"] = {
    "vector" : "vector",
    "deck" : "deque",
    "list" : "list",
}

ctx.lists["user.c_pointers"] = {
    "pointer": "*",
    "point her": "*",
    "pointer to pointer": "**",
    "reference": "&",
    "ref": "&",
}

ctx.lists["user.math_ops"] = {
    "plus": " + ",
    "minus": " - ",
    "subtract" : " - ",
    "divide": " / ",
    "divide by": " / ",
    "slash": " / ",
    "times": " * ",
    "multiplied by": " * ",
    "modulo" : " % ",
    "modular" : " % ",
    "module" : " % ",
}

ctx.lists["user.logical_ops"] = {
    "equal": " == ",
    "not equals": " != ",
    "not equal": " != ",
    "doesn't equal": " != ",
    "does not equal": " != ",
    "less [than]": " < ",
    "greater [than]": " > ",
    "greater or equal": " >= ",
    "less or equal": " <= ",

    "bitwise and": " && ",
    "bitwise or": " || ",
    "bitwise not": "~",

    "logical and": "&",
    "logical or": "|",
    "logical not": "!",

    
}

ctx.lists["user.methods_no_args"] = {
    "begin" : "begin",
    "end" : "end",
    "size" : "size",
    "capacity" : "capacity",
    "empty" : "empty",
    "back" : "back",
    "front" : "front",
    "data" : "data",
    "clear" : "clear",
    "length" : "length",
    "len" : "length"
}

ctx.lists["user.methods_with_args"] = {
    "reserve" : "reserve",
    "at" : "at",
    "assign" : "assign",
    "push back" : "push_back",
    "pop back" : "pop_back",
    "insert" : "insert",
    "erase" : "erase",
    "swap" : "swap",
    "emplace" : "emplace",
    "emplace back" : "emplace_back",
}

mod.list("headers", desc="some commonly included headers (vector, iostream, assert etc)")
mod.list("c_types", desc="regular c types")
mod.list("c_pointers", desc="* and ** etc")
mod.list("math_ops", desc="+-/*")
mod.list("logical_ops", desc="=, < , >= ...")
mod.list("containers", desc="some common stl containers")
mod.list("vec_funcs_no_args", desc="common vector functions - place cursor after")
mod.list("vec_funcs_with_args", desc="common vector functions - place cursor in parens")


identifiers = {}

@mod.capture(rule="[static] [const] {self.c_types} [{self.c_pointers}]")
def type_var(m) -> str:
    return m


