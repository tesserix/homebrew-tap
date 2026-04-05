class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.8.0/crossplane-validate-darwin-arm64"
      sha256 "249c61829bf95c5fd61e231d60c3c296f1b5555bf9f51b8bf370a7ab1dd5dd6e"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.8.0/crossplane-validate-darwin-amd64"
      sha256 "3c0e44307b25a796570dbbc9c13bfda958269364d9e93c570d6efd7eae865708"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.8.0/crossplane-validate-linux-arm64"
      sha256 "ccc978e22b93ef4fe8e771dcbf7d94d3cfb9447e5fece0af391899b23c2be101"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.8.0/crossplane-validate-linux-amd64"
      sha256 "413bbdbf9b8d592c3dace35dfcedd29676494ffde26cb17fa79d84777b34f26d"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
