class SquashAi < Formula
  include Language::Python::Virtualenv

  desc "Automated EU AI Act compliance for ML teams — CI/CD-native, open-core, developer-first"
  homepage "https://getsquash.dev"
  url "https://files.pythonhosted.org/packages/8a/51/c8cf3cb11241225acbca64ffe5fd0e61bb7d62c266754624d6b69c1b4713/squash_ai-2.7.0.tar.gz"
  sha256 "4b2a15f724e51a69688d13faa9863a390605812c70519546ab7049fb25c431a2"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/konjoai/homebrew-squash/releases/download/squash-ai-2.7.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: :rebuilding
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  :rebuilding
    sha256 cellar: :any_skip_relocation, ventura:       :rebuilding
    sha256 cellar: :any_skip_relocation, x86_64_linux:  :rebuilding
  end

  depends_on "python@3.12"

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/19/14/2c5dd9f512b66549ae92767a9c7b330ae88e1932ca57876909410251fe13/anyio-4.13.0.tar.gz"
    sha256 "334b70e641fd2221c1505b3890c69882fe4a2df910cba14d97019b90b24439dc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ce/cc/762dfb036166873f0059f3b7de4565e1b5bc3d6f28a414c13da27e442f99/idna-3.13.tar.gz"
    sha256 "585ea8fe5d69b9181ec1afba340451fba6ba764af97026f92a91d4eef164a242"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/81/69/17425771797c36cded50b7fe44e850315d039f28b15901ab44839e70b593/starlette-1.0.0.tar.gz"
    sha256 "6a4beaf1f81bb472fd19ea9b918b50dc3a77a6f2e190a12954b25e6ed5eea149"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/squash --version")
    assert_match "squash", shell_output("#{bin}/squash --help")
  end
end
