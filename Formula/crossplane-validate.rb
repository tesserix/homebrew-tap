class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.3.0/crossplane-validate-darwin-arm64"
      sha256 "13d38119e6a15d3dc0399daa612774f88030da2b0f78822cdedf484b8fb2fefb"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.3.0/crossplane-validate-darwin-amd64"
      sha256 "067f5bb469f3304b3a86fc2a4ebb228038cd24eb3ddcd80de75f8940bf4d45e8"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.3.0/crossplane-validate-linux-arm64"
      sha256 "05b5dcbf9ecc7717b1ad6361cbe1095d511df31edc017571e308489f513705f0"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.3.0/crossplane-validate-linux-amd64"
      sha256 "cf13649ead0230c6557737dfd55f60bb4960cffae321a94886bfe76e75b84f36"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
