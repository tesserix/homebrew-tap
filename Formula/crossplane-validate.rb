class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.12.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.2/crossplane-validate-darwin-arm64"
      sha256 "78852bb58142b3ca1a843d99c352ec5446a2b71e26b72fe5ede85a22995683d1"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.2/crossplane-validate-darwin-amd64"
      sha256 "e7f847246c7652594372dd23a40b8e9fe972ddee898a087297bd1c2f79ad4f98"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.2/crossplane-validate-linux-arm64"
      sha256 "38bbe1fd2a0acc1197d3e69d3f7af01865f198efca675feebea7937951234b67"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.2/crossplane-validate-linux-amd64"
      sha256 "2c7a25312d1e6bbda7f4fe66c593358a9f7dafc9e0aadd379ed4cbbef42b58f5"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
