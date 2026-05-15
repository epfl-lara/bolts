
abstract_keyword = "abstract"
class_keyword = "class"
class_name = "ExampleClass"
identifier_example = "thisIsAVariable"
end_keyword = "end"
val_keyword = "val"
equal_sign = "="
int_value = "420042424"
string_value = '"This is a string"'
other_identifier = "otherIdentifier"

inline_comment = "// This is an inline comment, to add to the generated code"

block_comment = """
    /*
    This is a block comment, to add to the generated code
    It can be used to add more information about the code, or to explain what the code does.
    It can also be used to add TODOs or FIXMEs, or to add any other information that is relevant to the code.
    */
""".strip()

def generate_code(rep: int) -> str:
    return (f"""
{abstract_keyword} {class_keyword} {class_name}
    {val_keyword} {identifier_example} {equal_sign} {int_value}
    {val_keyword} {other_identifier} {equal_sign} {string_value}
    {identifier_example} {abstract_keyword}
    {inline_comment}
    {abstract_keyword} {class_keyword} {identifier_example}
    {block_comment}
{end_keyword} {class_name}
            """.strip() + "\n\n") * rep


for i in range(1, 80):
    code = generate_code(i)
    with open(f"generated_code_{len(code) :06d}chars.amy", "w") as f:
        f.write(code)
        print(f"Generated file: {f.name} with {len(code)} characters")