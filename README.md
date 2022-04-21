Target Determinator Testdata
============================

This repository contains commits that change various aspects of the Bazel build configuration.
These commits cover as many cases as possible, allowing tests in https://github.com/bazel-contrib/target-determinator to validate target determinator implementations.

Branches are used to track these commits in a way that they can be rebased, e.g. if one wants to update the bazel version.

Tags are used to track immutable snapshots, ensuring that previous versions of `target-determinator` tests will be able to run tests successfully.
These tags are namespaced with a prefix that denotes the change that motivated that snapshot.

# Separate trees

## rules
Tags starting `rules/` are rulesets which are consumed by the testdata repo itself via `http_archive` or `git_repository` calls.

## submodules

Tags starting `submodules/` are submodules consumed by some commits in this repo.
