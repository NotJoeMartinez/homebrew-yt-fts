class YtFts < Formula
    include Language::Python::Virtualenv
  
    desc "Search all of a YouTube channel from the command line"
    homepage "https://github.com/NotJoeMartinez/yt-fts"
    url "https://github.com/NotJoeMartinez/yt-fts/releases/download/v0.1.43/yt-fts-0.1.43.tar.gz"
    sha256 "3b2a54d39164b49b27d86bc78bdaed2f389d81ae1915242d5c08d5333185e6e0"
    version "0.1.43"
    license "Unlicense"
  
    depends_on "python@3.12"
    depends_on "yt-dlp"
    
    resource "click" do
        url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
        sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
    end

    resource "chromadb" do
        url "https://files.pythonhosted.org/packages/47/6b/a5465827d8017b658d18ad1e63d2dc31109dec717c6bd068e82485186f4b/chromadb-0.4.24.tar.gz"
        sha256 "a5c80b4e4ad9b236ed2d4899a5b9e8002b489293f2881cb2cadab5b199ee1c72"
    end

    resource "openai" do
        url "https://files.pythonhosted.org/packages/f6/77/5853830ae66f7f195094bbe8de95d3e6a204801c5ee3538e97f9ef60de6c/openai-1.16.2.tar.gz"
        sha256 "c93d5efe5b73b6cb72c4cd31823852d2e7c84a138c0af3cbe4a8eb32b1164ab2"
    end

    resource "requests" do
        url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
        sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end

    resource "rich" do
        url "https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz"
        sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
    end

    resource "sqlite-utils" do
        url "https://files.pythonhosted.org/packages/ae/70/dc7c74592f30ac20be23eaeeb2a84ee6e2c12c21beb07a3eb53ead77de1f/sqlite-utils-3.36.tar.gz"
        sha256 "dcc311394fe86dc16f65037b0075e238efcfd2e12e65d53ed196954502996f3c"
    end

    resource "beautifulsoup4" do
        url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
        sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
    end


    def install
        virtualenv_install_with_resources
    end
    
    test do
        system bin/"yt-fts", "--version"
    end
end
    