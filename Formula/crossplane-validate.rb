class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.6.0/crossplane-validate-darwin-arm64"
      sha256 "26d7b75e3ac6294f516bb7c3399fc1a61bf574d0fd8205ac11a471b6a2a53be3"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.6.0/crossplane-validate-darwin-amd64"
      sha256 "ef580cd9589359c826eb1d92d51a78881622af6002b6fb37c114d55a031ca1f2"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.6.0/crossplane-validate-linux-arm64"
      sha256 "a72779e839a3cd3846f5700f444e753f7eb663b2da463463b3d5492cac83bf40"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.6.0/crossplane-validate-linux-amd64"
      sha256 "e7cd56ea0ceb8c373cffb1c21ffb2bd81aa3fc1b915934225a684a61e22814a7"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
