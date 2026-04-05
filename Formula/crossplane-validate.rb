class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.12.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.3/crossplane-validate-darwin-arm64"
      sha256 "af307f54e57663de7b868ebe51bdb07798cd43d50c2b05e2ca36193d6eeb9091"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.3/crossplane-validate-darwin-amd64"
      sha256 "cbf920745c0397975d43916ed4cf97bd7e3c128dc1c2b6ef5c48bc4d6126bbe2"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.3/crossplane-validate-linux-arm64"
      sha256 "4c29954aaa3e7278bd997c71bc8b236982fc3fc333310a0d1e9c7da83eca9d73"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.12.3/crossplane-validate-linux-amd64"
      sha256 "5b5135d400bcd5f6b8f495558ca41b8edfb16e7c6d052d7bc3ea63509adc0591"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
