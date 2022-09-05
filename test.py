from talon import Context, Module, actions, settings

mod = Module()
ctx = Context()

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
    "divide": " / ",
    "divide by": " / ",
    "slash": " / ",
    "times": " * ",
    "multiplied by": " * ",
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
    "and": " && ",
    "or": " || ",
    
}

ctx.lists["user.vec_funcs"] = {
    "begin" : "begin",
    "end" : "end",
    "size" : "size",
    "resize" : "resize",
    "capacity" : "capacity",
    "empty" : "empty",
    "reserve" : "reserve",
    "at" : "at",
    "back" : "back",
    "front" : "front",
    "data" : "data",
    "assign" : "assign",
    "push back" : "push_back",
    "pop back" : "pop_back",
    "insert" : "insert",
    "erase" : "erase",
    "swap" : "swap",
    "clear" : "clear",
    "emplace" : "emplace",
    "emplace back" : "emplace_back",
}

mod.list("c_types", desc="regular c types")
mod.list("c_pointers", desc="* and ** etc")
mod.list("math_ops", desc="+-/*")
mod.list("logical_ops", desc="=, < , >= ...")
mod.list("vec_funcs", desc="common vector functions")

identifiers = {}

@mod.capture(rule="{self.c_types} [{self.c_pointers}] <self.snk>")
def type_var(m) -> str:
    identifiers[m.snk] = True
    return m
    
@mod.capture(rule="add variable <self.snk>")
def add(m) -> str:
    identifiers[m.snk] = True
    return "adding " + m.snk
    
@mod.capture(rule="check <self.snk>")
def check(m) -> str:
    if m.snk in identifiers.keys():
        return "found!!!"
    else:
        return "not found :(("

@mod.capture(rule="<self.text>")
def snk(m) -> str:
    return m.text.replace(" ", "_")
