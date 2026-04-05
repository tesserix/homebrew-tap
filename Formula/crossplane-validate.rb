class CrossplaneValidate < Formula
  desc "Terraform plan-like validation for Crossplane resources"
  homepage "https://github.com/tesserix/crossplane-validation"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.10.1/crossplane-validate-darwin-arm64"
      sha256 "693c54d73acb6fa73698f189f2c94329ac3184ca541732709511890a94012c90"

      def install
        bin.install "crossplane-validate-darwin-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.10.1/crossplane-validate-darwin-amd64"
      sha256 "9db4771f9c2dbc1086722be931081fac1d3efeaaa603c97ca3acffc5301e0085"

      def install
        bin.install "crossplane-validate-darwin-amd64" => "crossplane-validate"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.10.1/crossplane-validate-linux-arm64"
      sha256 "fb26ac5ba1dde86364490944b4c07ff1c4c3b4f127a04bd5e7c3a59848479920"

      def install
        bin.install "crossplane-validate-linux-arm64" => "crossplane-validate"
      end
    end

    on_intel do
      url "https://github.com/tesserix/crossplane-validation/releases/download/v0.10.1/crossplane-validate-linux-amd64"
      sha256 "f7c6b644bdfa3592a8fa61608ab6628abf7d87be88354f9941bad3b556aa2fe4"

      def install
        bin.install "crossplane-validate-linux-amd64" => "crossplane-validate"
      end
    end
  end

  test do
    assert_match "crossplane-validate version", shell_output("#{bin}/crossplane-validate --version")
  end
end
