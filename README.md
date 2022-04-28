Error:

```
ERROR: /home/b/.cache/bazel/_bazel_b/daeaa4b97c7a4137193494eff37c80cb/external/a/BUILD:25:11: Action external/a/_validate_app_options.optionsvalid.d.ts failed: (Exit 1): ts_project_options_validator.sh failed: error executing command bazel-out/k8-opt-exec-2B5CBBC6/bin/external/npm/@bazel/typescript/bin/ts_project_options_validator.sh external/a/tsconfig.json bazel-out/k8-opt/bin/external/a/_validate_app_options.optionsvalid.d.ts ... (remaining 3 arguments skipped)

Use --sandbox_debug to see verbose messages from the sandbox
ERROR: ts_project rule //:app is missing a needed rootDir under bazel-out/k8-opt/bin.
Found only:  [
  'external/a',
  'external/a/bazel-out/host/bin',
  'external/a/bazel-out/darwin-fastbuild/bin',
  'external/a/bazel-out/darwin-opt/bin',
  'external/a/bazel-out/darwin-dbg/bin',
  'external/a/bazel-out/darwin_arm64-fastbuild/bin',
  'external/a/bazel-out/darwin_arm64-opt/bin',
  'external/a/bazel-out/darwin_arm64-dbg/bin',
  'external/a/bazel-out/k8-fastbuild/bin',
  'external/a/bazel-out/k8-opt/bin',
  'external/a/bazel-out/k8-dbg/bin'
]
This makes it likely that TypeScript will be unable to resolve dependencies using relative import paths
For example, if you 'import {} from ./foo', this expects to resolve foo.d.ts from Bazel's output tree
and TypeScript only knows how to locate this when the rootDirs attribute includes that path.
See the ts_project documentation: https://bazelbuild.github.io/rules_nodejs/TypeScript.html#ts_project
Or to suppress this error, run:
    npx @bazel/buildozer 'set validate False' //:app
Target @a//:app failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 0.880s, Critical Path: 0.49s
INFO: 45 processes: 19 internal, 26 linux-sandbox.
FAILED: Build did NOT complete successfully
```
