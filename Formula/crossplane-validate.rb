class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.9.0/crossplane-validate-darwin-arm64"
      sha256 "b87b60b38ac417f945e6c230e4d12a700274069dfb8fb7d89dbabecdac6a62ad"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.9.0/crossplane-validate-darwin-amd64"
      sha256 "31ead9d8fe96bdaf1f2030e56f5bab3d04f20d0b614410d2ef334e8344d9dbb9"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.9.0/crossplane-validate-linux-arm64"
      sha256 "026729901d379c3573f95f6e51e47af70de4db6909ad35158d36625d95c6bcd5"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.9.0/crossplane-validate-linux-amd64"
      sha256 "c7f5964f4c1190d6c839d01df34ef7cf9848ff5a4e5d96f0d6b5b7ccc8fd87e6"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
