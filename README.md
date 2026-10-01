# Tesserix Homebrew tap

## Tesserix Crew

Install the coding-agent orchestrator on macOS or Linux:

```bash
brew install --cask tesserix/tap/crew  # macOS: prebuilt binary, no Xcode needed
# Linux: brew install tesserix/tap/crew
crew doctor
crew
```

Crew reuses the existing logins of supported coding CLIs. Install and authenticate
those CLIs separately. Source and release archives are public at
[tesserix/tesserix-crew](https://github.com/tesserix/tesserix-crew).

Upgrade with `brew update && brew upgrade --cask crew` on macOS, or
`brew update && brew upgrade crew` on Linux. The cask/formula installs immutable,
checksummed release binaries for Apple Silicon, Intel macOS, and ARM64/AMD64 Linux.

## DevAI

Install the latest public DevAI CLI on macOS:

```bash
brew tap tesserix/tap
brew install devai
```

Upgrade an existing installation:

```bash
brew update
brew upgrade devai
```

The DevAI formula uses immutable, checksummed Intel and Apple Silicon release
artifacts. The application source repository remains private.

## Maintainer release

Run the `Release DevAI CLI to Homebrew` workflow in the private DevAI
repository with the version from `pyproject.toml` and a trusted branch or tag.
It builds both macOS architectures, smoke-tests the executables, publishes
release assets here, audits a new formula, installs it with Homebrew, and
commits the formula update.

The private release workflow uses GCP workload identity and mints a short-lived
GitHub App token scoped only to this tap. No private source credential is
stored in this public repository.
