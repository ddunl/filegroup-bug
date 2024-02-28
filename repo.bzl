def _vendored_repo_impl(repository_ctx):
    parent_path = repository_ctx.path(repository_ctx.attr.parent).dirname
    relpath_parts = repository_ctx.attr.relpath.split("/")
    vendored_path = parent_path
    for part in relpath_parts:
        vendored_path = vendored_path.get_child(part)
    repository_ctx.symlink(vendored_path, ".")

vendored_repo = repository_rule(
    implementation = _vendored_repo_impl,
    attrs = {
        "parent": attr.label(default = "//:WORKSPACE"),
        "relpath": attr.string(),
    },
)
