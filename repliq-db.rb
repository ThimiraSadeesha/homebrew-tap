class RepliqDb < Formula
  desc "MySQL database backup and copy CLI tool"
  homepage "https://github.com/ThimiraSadeesha/db-backup-cli"
  url "https://registry.npmjs.org/repliq-db/-/repliq-db-1.0.2.tgz"
  sha256 "49ec8a7879523f75e65e0ace03b6ddb6a0f89b0a6bb1807a4ff66441f6e51f5c"
  license "MIT"

  depends_on "node"

  def install
    # Install the npm package into libexec
    system "npm", "install", "--global", "--prefix=#{libexec}", cached_download

    # Symlink the CLI executable to bin
    bin.install_symlink Dir["#{libexec}/bin/repliq-db"]
  end
end
