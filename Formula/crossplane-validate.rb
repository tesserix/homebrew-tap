class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.12.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.5/crossplane-validate-darwin-arm64"
      sha256 "8f896f2c12cc417e17b8dbd70a3495ed59e69fb77f52b0af9aefac920fa39a8f"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.5/crossplane-validate-darwin-amd64"
      sha256 "dcacd17463166ddeae4e523d0d4712daa6fba208d26fa0b6d88462d775e5abb3"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.5/crossplane-validate-linux-arm64"
      sha256 "cf05cc2085472d05fed98d6fcf9e9e4d6d94e0e45711cc9edc3d8a58ee3a2527"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.5/crossplane-validate-linux-amd64"
      sha256 "5d1d4ac32c1787de3d41da170f9f53c68cde3486b56834047d0cbbcde3b1ea23"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
