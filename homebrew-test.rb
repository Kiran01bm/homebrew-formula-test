# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HomebrewTest < Formula
  desc "Test a.sh and b.sh"
  homepage "https://github.com/Kiran01bm/homebrew-test/blob/master/"
  url "https://github.com/Kiran01bm/homebrew-test/archive/refs/tags/v0.1.tar.gz"
  sha256 "f0efb92da4352675da94a79f7153bb624c85e1cfc9bb69b757b84a3048ffab6f"
  license ""

  def install
    bin.mkpath
    bin.install "one.sh" => "aash"
    bin.install "two.sh" => "bbsh"
    prefix.install_metafiles
  end

  test do
    system "aash"
    system "bbsh"
  end

end
