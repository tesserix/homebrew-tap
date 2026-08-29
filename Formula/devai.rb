# typed: strict
# frozen_string_literal: true

# DevAI CLI packaged for macOS.
class Devai < Formula
  desc "Build, run, and evaluate AI agents with DevAI"
  homepage "https://devai.tesserix.app"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserix/homebrew-tap/releases/download/devai-v0.1.0/devai-0.1.0-darwin-arm64.tar.gz"
      sha256 "c7e57df9260e1cdfeda58571371a5f3e868142ff660645b310bc5f84bd3faf46"
    elsif Hardware::CPU.intel?
      url "https://github.com/tesserix/homebrew-tap/releases/download/devai-v0.1.0/devai-0.1.0-darwin-amd64.tar.gz"
      sha256 "83984701c3fa1eb753b656e92116f94d3bb8b49c6929256dc9bfa777db897389"
    end
  end

  def install
    bin.install "devai"
  end

  test do
    assert_match "AI-powered development lifecycle", shell_output("#{bin}/devai --help")
  end
end
