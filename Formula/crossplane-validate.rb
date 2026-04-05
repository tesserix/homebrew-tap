class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.1/crossplane-validate-darwin-arm64"
      sha256 "2be7f962f9ff9b02a7a83e0fbc0064403dc3dab96021668cddd1d89a158885b9"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.1/crossplane-validate-darwin-amd64"
      sha256 "72a9ff1a3a9aa56044b695a35bb0e0bf53a2367e0d93c4312fe5bf5abd5bb0e7"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.1/crossplane-validate-linux-arm64"
      sha256 "2b8989decad5420237e928ce9dedbe970b440adb08c5edaaee5fb3f7760b7e25"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.1/crossplane-validate-linux-amd64"
      sha256 "1ae22d376575987f73b97181a9d76ad9d9b4383239d798ad63ebaead6f71bc65"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
