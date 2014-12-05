require "formula"

class Rro < Formula
  homepage "http://mran.revolutionanalytics.com/open"
  url "http://mran.revolutionanalytics.com/install/homebrew/RRO-8.0.1-beta.tar.gz"
  sha1 "caf1cc4829188abfbcba0ad601068a6942926e8a"
  version '8.0.1'

  depends_on :arch => :intel
  depends_on :x11 => :recommended

  def install
   bin.install Dir['Versions/3.1/Resources/bin/R']
   bin.install Dir['Versions/3.1/Resources/bin/Rscript']
   bin.install Dir['Versions/3.1/Resources/bin/Rcmd']
   prefix.install Dir['*']
  end

  test do
    system "/usr/local/bin/R"
  end
end
