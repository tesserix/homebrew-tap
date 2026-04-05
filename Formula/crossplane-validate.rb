class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.12.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.6/crossplane-validate-darwin-arm64"
      sha256 "ac1189d3c57bd14041254b60abeb481e77e5dd64a8ffcaeba814dd03a1dced83"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.6/crossplane-validate-darwin-amd64"
      sha256 "fbae323cfadd29fca7807e08a3900af9c5e53f41611c957a241d76c30770a869"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.6/crossplane-validate-linux-arm64"
      sha256 "85f5c44aaedb82e295420790ea58b1aa14943bcc8e6a96fb6f707152fa9e1181"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.6/crossplane-validate-linux-amd64"
      sha256 "087f7d36b38f13e4c4aa5d400c41edb841452e41832379c37aac6771b475a71f"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
