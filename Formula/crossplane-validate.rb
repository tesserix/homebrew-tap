class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.14.1/crossplane-validate-darwin-arm64"
      sha256 "6e3608935b81c2b318dd2f586a766e23de7e473ad8ea7137e1e7d8fae1dc5d76"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.14.1/crossplane-validate-darwin-amd64"
      sha256 "84839ad423b52fbe3a64aaab1c4f9f1b63121b2087fb39a393d4a11f1d7ff30b"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.14.1/crossplane-validate-linux-arm64"
      sha256 "715e9f5fd49e10330d3e4f097c824b0a513ad9926f4606e1a5dfbcff8d0c6fd3"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.14.1/crossplane-validate-linux-amd64"
      sha256 "3ad3dde5129dec4941be1b511fc23207ca4cf21b11cbe33f53ad82d03f3acb06"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
