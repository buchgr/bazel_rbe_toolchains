# The default RBE platform where most actions run on
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

# The highcpu RBE platform where heavy actions run on. In order to
# use this platform add the highcpu_machine constraint to your target.
platform(
    name = "highcpu_platform",
    constraint_values = [
        "//configs:highcpu_machine",
    ],
    parents = [":default_platform"],
    remote_execution_properties = """
        {PARENT_REMOTE_EXECUTION_PROPERTIES}
        properties: {
          name: "gceMachineType"
          value: "n1-highcpu-32"
        }
        """,
)

