class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.14.0/crossplane-validate-darwin-arm64"
      sha256 "506fd0620fc79e9b3536a9ccc5a7eda957a42192b0a37e6e7f1a9faf45e7eb2e"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.14.0/crossplane-validate-darwin-amd64"
      sha256 "067fa73633e13a168a6d82a2f663c41d0a3c2e669bad95e434543d34e45fe255"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.14.0/crossplane-validate-linux-arm64"
      sha256 "43507bfd02b3e3f7af2f66a6b0bee83fcb6363485def57f2e87dce56b6cda59f"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.14.0/crossplane-validate-linux-amd64"
      sha256 "4d20e57166d3aa2b4ffc59ab5ceb75b0ecb341a4fadce08cc1255cc3558dc461"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
