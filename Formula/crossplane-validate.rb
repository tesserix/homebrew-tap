class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.2.0/crossplane-validate-darwin-arm64"
      sha256 "3a589233f39632666577a97576cae7b120917f74ce1572310d8d8edf4236fc09"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.2.0/crossplane-validate-darwin-amd64"
      sha256 "bdc380ba3f884b31a2884648ba6e61bc11e6ecfa023b681f0fc78df5975ae48f"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.2.0/crossplane-validate-linux-arm64"
      sha256 "31edfa096ac7bbd5b1aa114d33bd87ec6f9f60235d2312341bcaf7a95c7684f7"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.2.0/crossplane-validate-linux-amd64"
      sha256 "e73661441adb9d4121e04bd4b01d562e9ac6292cd125d85cb453e1914f376460"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
