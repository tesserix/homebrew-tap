class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.10.0/crossplane-validate-darwin-arm64"
      sha256 "8b12987deb54a81d0e1ab5cb8aeaa2c3ecb50bac02d51234bf20837b7f33f5c1"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.10.0/crossplane-validate-darwin-amd64"
      sha256 "78f86b0e51187fef745a06e7de45b397e3c7694699918617812743cfd1a1a6fc"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.10.0/crossplane-validate-linux-arm64"
      sha256 "9cb4718ae1b936f911a957ac2c51be8d2ac0bf8e2c5f0dc64ea02be9b1e1f858"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.10.0/crossplane-validate-linux-amd64"
      sha256 "7e5bbd782b65b0cbb08373d4771fae9e77127153d59a4bb9edb633ca4af6c189"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
