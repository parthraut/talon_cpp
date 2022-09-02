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

mod.list("c_types", desc="regular c types")
mod.list("c_pointers", desc="* and ** etc")
mod.list("math_ops", desc="+-/*")
mod.list("logical_ops", desc="=, < , >= ...")



@mod.capture(rule="{self.c_types} [{self.c_pointers}] ( <self.letter> | <self.text> )")
def type_var(m) -> str:
    return m
    
