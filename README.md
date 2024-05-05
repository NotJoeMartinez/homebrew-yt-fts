
### Homebrew formula for [yt-fts](https://github.com/NotJoeMartinez/yt-fts)



formule structure
```rb
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

  resource "..." do
  ...
  end
  ...

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"yt-fts", "--version"
  end

end


```

### Testing 

```
python3 -m venv .venv
source .venv/bin/activate
pip install yt-fts 
pip install homebrew-pypi-poet
poet -f yt-fts > new_packages.rb
```


Getting dependency tree
```
pipdeptree 
```




- [ ] Have you followed the [guidelines for contributing](https://github.com/Homebrew/homebrew-core/blob/HEAD/CONTRIBUTING.md)?
- [ ] Have you ensured that your commits follow the [commit style guide](https://docs.brew.sh/Formula-Cookbook#commit)?
- [ ] Have you checked that there aren't other open [pull requests](https://github.com/Homebrew/homebrew-core/pulls) for the same formula update/change?
- [ ] Have you built your formula locally with `HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source <formula>`, where `<formula>` is the name of the formula you're submitting?
- [ ] Is your test running fine `brew test <formula>`, where `<formula>` is the name of the formula you're submitting?
- [ ] Does your build pass `brew audit --strict <formula>` (after doing `HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source <formula>`)? If this is a new formula, does it pass `brew audit --new <formula>`?

