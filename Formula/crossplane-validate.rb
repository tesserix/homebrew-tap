class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.1.0/crossplane-validate-darwin-arm64"
      sha256 "94243fa1f109be9c8494302d14fd5bde1373ebce94b79a40c2bd16e74960a001"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.1.0/crossplane-validate-darwin-amd64"
      sha256 "2bc07367b97a59faf5a9fe0d7125099af6dfb5779f56aeeeb30c543860f68fad"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.1.0/crossplane-validate-linux-arm64"
      sha256 "1c3c615d7f35e44caf41eb7b0da2f25a20442046b55df9b3939d8f48ca1319a0"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.1.0/crossplane-validate-linux-amd64"
      sha256 "7e2a0f5355d3f209fc9892d0961da7e36fdacb6edaf659fbc00dc800af9757f4"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
