load("@npm//@bazel/typescript:index.bzl", "ts_config", "ts_project")

ts_config(
    name = "tsconfig",
    src = "tsconfig.json",
)

genrule(
    name = "gen_src",
    outs = ["generated.ts"],
    cmd_bash = """
    echo '
    const greeting = "Hello";
    export default greeting;
    ' > $@
    """,
)

ts_project(
    name = "generated",
    srcs = ["generated.ts"],
    composite = True,
)

ts_project(
    name = "app",
    srcs = ["app.ts"],
    composite = True,
    tsconfig = ":tsconfig",
    deps = [
        ":generated",
    ],
)
