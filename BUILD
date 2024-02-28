
cc_library(
    name = "cc_library_with_unused_dep",
    hdrs = ["@dep//:dep_filegroup"],
    srcs = ["cc_library.cc"],
    deps = [
        "@dep//:dep_cc_library", # unused!!
    ]
)

cc_library(
    name = "cc_library",
    hdrs = ["@dep//:dep_filegroup"],
    srcs = ["cc_library.cc"],
)
