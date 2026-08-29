# Tesserix Homebrew tap

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

Run the `Release DevAI CLI` workflow with the version from DevAI's
`pyproject.toml` and a trusted branch or tag. The workflow builds both macOS
architectures, smoke-tests the executables, publishes release assets, audits a
new formula, installs it with Homebrew, and commits the formula update.

The workflow reads the private source using the `DEVAI_DEPLOY_KEY` Actions
secret. Its matching public key must be a read-only deploy key on
`tesserix/devai`.
