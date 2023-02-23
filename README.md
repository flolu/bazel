<div align="center">
  <h1>🌿 Bazel for beginners</h1>
  <p>Getting started with Bazel for absolute beginners</p>
</div>

# About Bazel

- [Bazel](https://bazel.build) is a tool to **build** and **test** software at any scale
- It's **extremely fast** and makes builds reproducible
- It's able to build **any language**
- It's used by many [big companies](https://bazel.build/community/users)

# Bazel Basics

- The `WORKSPACE` file marks the root of a Bazel **workspace**
- `BUILD` files mark a directory as a **package**
- Build **targets** are defined inside`BUILD` files
- Targets are defined by **rules**
- Rules are written in Starlark (But most end users won't rules themselves)

# Usage

**Installation**

- Install [Bazelisk](https://github.com/bazelbuild/bazelisk) to manage different version of Bazel
  - With NPM: `npm i -g @bazel/bazelisk` (requires Node.js)
  - On macOS: `brew install bazelisk`

**Commands**

- `bazel version` (Get version of Bazel)
- `bazel build //...` (Build everything)
- `bazel clean` (Clean Bazel outputs)
- `bazel build //greeter/...` (Build everything inside the `greeter` package)
- `bazel build //:bazel_file` (Only build the `bazel_file` target)
- `bazel test //...` (Test everything)

> 💡 You can also omit the `//`

**Development Environment**

- Install the official [Bazel extensions](https://marketplace.visualstudio.com/items?itemName=BazelBuild.vscode-bazel)
- Install [Buildifier](https://github.com/bazelbuild/buildtools/tree/master/buildifier) for formatting
  - With NPM: `npm i -g @bazel/buildifier` (requires Node.js)
  - On macOS: `brew install buildifier`
