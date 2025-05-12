
abstract_keyword = "abstract"
class_keyword = "class"
identifier_example = "thisIsAVariable"

inline_comment = "// This is an inline comment, to add to the generated code"

block_comment = """
/*
This is a block comment, to add to the generated code
It can be used to add more information about the code, or to explain what the code does.
It can also be used to add TODOs or FIXMEs, or to add any other information that is relevant to the code.
*/
""".strip()

def generate_code(rep: int) -> str:
    return f"""
{abstract_keyword} {class_keyword} {identifier_example}
{identifier_example} {abstract_keyword}
{inline_comment}
{abstract_keyword} {class_keyword} {identifier_example}
{block_comment}
{identifier_example} {abstract_keyword}
            """.strip() * rep


for i in range(1, 30):
    code = generate_code(i)
    with open(f"generated_code_{len(code) :06d}chars.amy", "w") as f:
        f.write(code)
        print(f"Generated file: {f.name} with {len(code)} characters")