workspace(name = "debian_toolchains")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_toolchains",
    sha256 = "c6159396a571280c71d072a38147d43dcb44f78fc15976d0d47e6d0bf015458d",
    strip_prefix = "bazel-toolchains-0.26.1",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/0.26.1.tar.gz",
        "https://github.com/bazelbuild/bazel-toolchains/archive/0.26.1.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

rbe_autoconfig(
  name = "bazel_rbe_ubuntu1804",
  registry = "gcr.io",
  repository = "bazel-untrusted/bazel_rbe/ubuntu1804",
  digest = "sha256:ca2c1aee8219783bf37b9d05a4d1f1e6ce684b178f5a16b8320cdc325c01d658",
  config_dir = "bazel-ubuntu1804",
  output_base = "configs",
)

