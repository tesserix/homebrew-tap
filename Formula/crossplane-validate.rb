class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.11.1/crossplane-validate-darwin-arm64"
      sha256 "e76d2029865cb850a84ff885f651b727bbca639f42d3c00cc488ed32170df785"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.11.1/crossplane-validate-darwin-amd64"
      sha256 "a4644f492269c937cd158d42089c6250bf1a6d411863e8baa2dbd1bc59df61c1"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.11.1/crossplane-validate-linux-arm64"
      sha256 "fb669df82b6f09cf40bd0d1e2330dfdb90288ddfc4071f940f1d4f0854ef487e"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.11.1/crossplane-validate-linux-amd64"
      sha256 "97352ef438c8106c4898d8f7fa0639fa4807f1399f4fd5e9d9faaf86a08d8d77"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
