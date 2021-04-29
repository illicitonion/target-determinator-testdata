load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def setup():
    RULES_GIT_TAG = "rules/v0/simple_package"
    RULES_ARCHIVE_SHA256 = "d150e8af18cf8a86e9c4ac90e314aa18787e1a427bba76e66896d2705cb066a1"

    http_archive(
        name = "rules",
        sha256 = RULES_ARCHIVE_SHA256,
        strip_prefix = "target-determinator-testdata-" + RULES_GIT_TAG.replace("/", "-"),
        url = "https://github.com/bazel-contrib/target-determinator-testdata/archive/refs/tags/" + RULES_GIT_TAG + ".tar.gz",
    )