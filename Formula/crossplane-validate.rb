class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.13.0/crossplane-validate-darwin-arm64"
      sha256 "89bee522920fa2f14675cf08541179018efd92f35acd9dce043cf3b2eeaf86cb"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.13.0/crossplane-validate-darwin-amd64"
      sha256 "391c716724a812d0d5d076ee7c5b9c73c1fa5b254a1cc7f6b98ac6eea71034b3"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.13.0/crossplane-validate-linux-arm64"
      sha256 "bff24596f0029d3f65378dcd0f9d1dd51c1f4cc6b3e651cacf8e01ce3ba7c99f"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.13.0/crossplane-validate-linux-amd64"
      sha256 "b71c78da6983111277cbae452cf59da4102174ea65112281dab134040f7bf671"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
