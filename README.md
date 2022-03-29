# clean-self-hosted-runner

GitHub Actions to clean the working directory on self hosted runners

[![Release](https://github.com/ATOS-Actions/clean-self-hosted-runner/actions/workflows/on_push.yml/badge.svg#main)](https://github.com/ATOS-Actions/clean-self-hosted-runner/actions/workflows/on_push.yml)

Per the [official documentation](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners), self-hosted runners don't need to have a clean instance for every job execution.
Your job might however need a clean working directory for every execution.
The goal of this action is to clean the working directory before each execution.

## Usage

```
steps:
- uses: ATOS-Actions/clean-self-hosted-runner@v1
```
