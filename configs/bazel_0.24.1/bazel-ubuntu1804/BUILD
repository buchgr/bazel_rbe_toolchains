package(default_visibility = ["//visibility:public"])

# The default RBE platform where most actions run on. Have this until
# https://github.com/bazelbuild/bazel-toolchains/issues/356 is fixed.
platform(
    name = "default_platform",
    parents = ["//configs/bazel_0.24.1/bazel-ubuntu1804/config:platform"],
    remote_execution_properties = """
        {PARENT_REMOTE_EXECUTION_PROPERTIES}
        properties: {
          name: "dockerNetwork"
          value: "standard"
        }
        properties: {
          name: "dockerPrivileged"
          value: "true"
        }
        """,
)

