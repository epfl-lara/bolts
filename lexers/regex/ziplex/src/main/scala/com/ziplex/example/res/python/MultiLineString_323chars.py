import textwrap

def banner(title: str) -> None:
    """Show a multi-line, indented banner."""
    s = """
        === {title} ===
        This block demonstrates a triple-quoted string
        with indentation and f-string substitution.
    """
    print(textwrap.dedent(s).format(title=title))

banner("MultiLineString")
