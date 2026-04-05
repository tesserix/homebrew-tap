class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.11.0/crossplane-validate-darwin-arm64"
      sha256 "684687a87b97b4d8ddd522359a91aad9f5ebd1639e62bcdd97d24741c0124695"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.11.0/crossplane-validate-darwin-amd64"
      sha256 "dcf7e24aa700286a5c88fe647a8bce3ef2a5825336b0213d2edca70bd2a8b541"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.11.0/crossplane-validate-linux-arm64"
      sha256 "41fa977dedcb8b3f063d00b122c6e37b260d38f01e25cdf1bc447b3c1c81aeec"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.11.0/crossplane-validate-linux-amd64"
      sha256 "1c29e7907f7fefd77786a316574864aa9c85502856c5cd42bf50d6ad571ecef2"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
