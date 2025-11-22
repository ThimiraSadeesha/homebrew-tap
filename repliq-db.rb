class RepliqDb < Formula
  desc "MySQL database backup and copy CLI tool"
  homepage "https://github.com/ThimiraSadeesha/db-backup-cli"
  url "https://registry.npmjs.org/repliq-db/-/repliq-db-1.0.3.tgz"
  sha256 "49ec8a7879523f75e65e0ace03b6ddb6a0f89b0a6bb1807a4ff66441f6e51f5c"
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