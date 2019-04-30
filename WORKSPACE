workspace(name = "debian_toolchains")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
  name = "bazel_toolchains",
  sha256 = "cfd6663731b2c8986096eccda25cb81876bbf5715393ac31a13df2dafb2e46a0",
  strip_prefix = "bazel-toolchains-037cffaca540b978bd8824de12a88be158e69366",
  urls = [
    "https://github.com/bazelbuild/bazel-toolchains/archive/037cffaca540b978bd8824de12a88be158e69366.tar.gz",
  ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

rbe_autoconfig(
  name = "bazel_rbe_ubuntu1804",
  registry = "gcr.io",
  repository = "bazel-untrusted/bazel_rbe/ubuntu1804",
  digest = "sha256:6ef924b621084dbddf0a50c3a088018e62984380f42f9eed70395a8e0cccdb7c",
  config_dir = "bazel-ubuntu1804",
  output_base = "configs",
)

