#!/usr/bin/env python3
"""Render the checksummed DevAI formula from release artifacts."""

from __future__ import annotations

import argparse
import re
from pathlib import Path

VERSION_RE = re.compile(r"^[0-9]+\.[0-9]+\.[0-9]+(?:[-.][A-Za-z0-9]+)*$")
SHA256_RE = re.compile(r"^[0-9a-f]{64}$")


def render(version: str, amd64_sha256: str, arm64_sha256: str) -> str:
    if not VERSION_RE.fullmatch(version):
        raise ValueError("version must be a release version such as 0.1.0")
    if not SHA256_RE.fullmatch(amd64_sha256):
        raise ValueError("amd64 SHA-256 is invalid")
    if not SHA256_RE.fullmatch(arm64_sha256):
        raise ValueError("arm64 SHA-256 is invalid")

    release = f"https://github.com/tesserix/homebrew-tap/releases/download/devai-v{version}"
    return f'''# typed: strict
# frozen_string_literal: true

# DevAI CLI packaged for macOS.
class Devai < Formula
  desc "Build, run, and evaluate AI agents with DevAI"
  homepage "https://devai.tesserix.app"
  version "{version}"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "{release}/devai-{version}-darwin-arm64.tar.gz"
      sha256 "{arm64_sha256}"
    elsif Hardware::CPU.intel?
      url "{release}/devai-{version}-darwin-amd64.tar.gz"
      sha256 "{amd64_sha256}"
    end
  end

  def install
    bin.install "devai"
  end

  test do
    assert_match "AI-powered development lifecycle", shell_output("#{{bin}}/devai --help")
  end
end
'''


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--version", required=True)
    parser.add_argument("--amd64-sha256", required=True)
    parser.add_argument("--arm64-sha256", required=True)
    parser.add_argument("--output", type=Path, default=Path("Formula/devai.rb"))
    args = parser.parse_args()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(render(args.version, args.amd64_sha256, args.arm64_sha256))


if __name__ == "__main__":
    main()
