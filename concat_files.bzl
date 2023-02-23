"""
A macro, that concatenates a list of `files` into one `output_file`.
"""

def concat_files(name, files, ouput_file, **kwargs):
    native.genrule(
        name = name,
        srcs = files,
        outs = [ouput_file],
        cmd = "cat $(SRCS) > $(OUTS)",
        **kwargs
    )
