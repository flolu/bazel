"""
A Macro, which tests if the content of the file `file`
matches a certain `expected_content` sring.
"""

def test_file_equals(name, file, expected_content, visibility = None):
    native.sh_test(
        name = name,
        size = "small",
        srcs = ["//testing:test_file_equals.sh"],
        args = ["$(location %s) '%s'" % (file, expected_content)],
        data = [file],
        visibility = visibility,
    )
