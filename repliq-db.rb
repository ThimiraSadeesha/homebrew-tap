class RepliqDb < Formula
  desc "MySQL database backup and copy CLI tool"
  homepage "https://github.com/ThimiraSadeesha/repliq-db-cli"
  url "https://registry.npmjs.org/repliq-db/-/repliq-db-1.0.3.tgz"
  sha256 "1b9f10e4effee036986ee10182998ff321cf9fed57374adf3ffc6074b83661cd"
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