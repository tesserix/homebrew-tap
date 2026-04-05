class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.12.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.4/crossplane-validate-darwin-arm64"
      sha256 "84913dc5443badca131ac4287d4494d90b12d2aed4c00dfad6e461a68abb3f2d"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.4/crossplane-validate-darwin-amd64"
      sha256 "d31df9c15d84ff8671bf971ab66ecd8f19b9b1bfb3a732fb6c7170d4b6aa6542"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.4/crossplane-validate-linux-arm64"
      sha256 "0235220715940d4fc140d13db06142c8f45792e9e49955a3d4db7eeeba0f8e76"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.4/crossplane-validate-linux-amd64"
      sha256 "63640f9f8dcf656190f4d6114d40572388244ec28a58482dc1266de9fcecffe7"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
