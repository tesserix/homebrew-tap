class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.7.0/crossplane-validate-darwin-arm64"
      sha256 "4b2e04be9c31438bf91e91bd837fc8b2a431e1fbf22fbe1c231a079df188839c"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.7.0/crossplane-validate-darwin-amd64"
      sha256 "b17532067d3d66e00a5f2ffd3b7d5ca51657bae74053e1eda8dbc7f1d4fa7601"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.7.0/crossplane-validate-linux-arm64"
      sha256 "ea9ee32c52ac206eae98a0470c9527013fe408898bd8959e245a48d2e476839f"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.7.0/crossplane-validate-linux-amd64"
      sha256 "c8565facdf40a786e7d9efe5475cc2333c81e82dcad85866aa61ab98529527e2"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
