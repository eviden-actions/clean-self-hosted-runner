# clean-self-hosted-runner

GitHub Actions to clean the working directory on self hosted runners

[![Release](https://github.com/atos-actions/clean-self-hosted-runner/actions/workflows/release.yml/badge.svg#main)](https://github.com/atos-actions/clean-self-hosted-runner/actions/workflows/release.yml)

Per the [official documentation](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners), self-hosted runners don't need to have a clean instance for every job execution.
Your job might however need a clean working directory for every execution.

The goal of this action is to clean the working directory at the beginning or the end of each job.

## Usage

```yaml
steps:
  - uses: atos-actions/clean-self-hosted-runner@v1
```

### Options

To disable the cleanup job (e.g. for debugging purpose), set the [environment variable](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#env) `DISABLE_RUNNER_CLEANUP` to **true**

### Example

This is an example of a simple NPM build workflow that will clean the working directory after each execution.

```yaml
name: My Workflow

on:
  pull_request:
    types: [opened, synchronize, reopened]

jobs:
  build:
    runs-on: self-hosted

    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v3
      - run: npm ci
      - run: npm run build
      - uses: atos-actions/clean-self-hosted-runner@v1
        if: ${{ always() }} # Run even if previous steps in the job fail or are canceled
```
