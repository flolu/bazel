"""
A macro, which tests if the content of the file `file`
matches a certain `expected_content` sring.
"""

# Has to be absolute path!
FILE_EQUALS_TEST_SCRIPT = "//testing:file_equals_test.sh"

def file_equals_test(name, file, expected_content, **kwargs):
    native.sh_test(
        name = name,
        size = "small",
        srcs = [FILE_EQUALS_TEST_SCRIPT],
        args = ["$(location %s) '%s'" % (file, expected_content)],
        data = [file],
        **kwargs
    )
