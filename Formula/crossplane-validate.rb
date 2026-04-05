class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.0/crossplane-validate-darwin-arm64"
      sha256 "eeb3447be5f6289c3398500f94b3a92568ea110e1a7b3891e8ef390e6959ebfe"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.0/crossplane-validate-darwin-amd64"
      sha256 "d9b69333c274536b09e8d6099628890629d023f793a8f77a77902db5e17df9c4"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.0/crossplane-validate-linux-arm64"
      sha256 "222f72351a233978d30930108214ae76ee527b4459644baa751afa34e255746e"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.0/crossplane-validate-linux-amd64"
      sha256 "3a492284ed717cbf4240f82f51d07c55f70160452087078162de9627d666a3b4"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
