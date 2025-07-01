module.exports = {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "scope-enum": [2, "always", ["deps", "spec", "go", "php", "typescript-axios"]],
    "type-enum": [
      2,
      "always",
      ["feat", "fix", "docs", "chore", "refactor", "ci", "test", "revert"],
    ],
  },
};
