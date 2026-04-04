class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.4.0/crossplane-validate-darwin-arm64"
      sha256 "d9b92e9ed5c15eb051a4959f772fcf4203900448dea0815e29eda828dedb0b4d"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.4.0/crossplane-validate-darwin-amd64"
      sha256 "fb3ca3a3a75a3bf0cdfe6de7ee19f64ae5b70f5847c27e8373a4aa106c6d43f6"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.4.0/crossplane-validate-linux-arm64"
      sha256 "cedf73ffb80503fc453a9256a8d5ac860b5193771ef3656e828d5a67a0904386"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.4.0/crossplane-validate-linux-amd64"
      sha256 "a1999348f8404eb96c019884911c5848405eb4f86c9348840506092e7974db0d"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
