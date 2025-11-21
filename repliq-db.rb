class RepliqDb < Formula
  desc "MySQL database backup and copy CLI tool"
  homepage "https://github.com/ThimiraSadeesha/repliq-db-cli"
  url "https://registry.npmjs.org/repliq-db/-/repliq-db-1.0.2.tgz"
  sha256 "49ec8a7879523f75e65e0ace03b6ddb6a0f89b0a6bb1807a4ff66441f6e51f5c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_install_args
    bin.install "dist/cli.js" => "repliq-db"
  end
end