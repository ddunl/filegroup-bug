Expected:
```
bazel build :all
```

But the above command fails, only can build like
```
bazel build :cc_library_with_unused_dep
```
