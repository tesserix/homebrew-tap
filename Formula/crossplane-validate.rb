class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.5.0/crossplane-validate-darwin-arm64"
      sha256 "2cd87404096404dbd261adb6b42e2e74142336241e1a0d48303fe9e3267419c4"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.5.0/crossplane-validate-darwin-amd64"
      sha256 "d2435c3c21e4a2fd31b78f6a8ade31193d95352ab2808318e3530cabf4265ba0"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.5.0/crossplane-validate-linux-arm64"
      sha256 "47f92ac4f2b1b2113f06c62a4b703726d44ca3f1ddbb68e900dc2406de4b621a"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.5.0/crossplane-validate-linux-amd64"
      sha256 "c7716c8b5acdc7c603695404749c0dd7394fe7ddb951b67aee020f50d3db6f41"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
