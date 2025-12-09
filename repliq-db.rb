class RepliqDb < Formula
  desc "Database backup and copy CLI tool"
  homepage "https://github.com/ThimiraSadeesha/repliq-db-cli"
  url "https://registry.npmjs.org/repliq-db/-/repliq-db-1.0.4.tgz"
  sha256 "ec48b2b94318d13b6d492b2b7f0c917b42e9a44cdcfc24b84fe91ce3798f90c8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{libexec}", cached_download
    bin.install_symlink "#{libexec}/bin/repliq-db"
  end

  test do
    system "#{bin}/repliq-db", "--version"
  end
end