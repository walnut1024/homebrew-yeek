cask "yeek" do
  version "2.0.0-alpha.15"
  sha256 "3b02859ddea080c2a14d81460719e7b1768b38119dd3e37fc9c047b84ec2bd19"

  url "https://github.com/walnut1024/yeek/releases/download/v#{version}/Yeek_#{version}_aarch64.dmg"
  name "Yeek"
  desc "Session memory manager for local agent sessions"
  homepage "https://github.com/walnut1024/yeek"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "Yeek.app"

  zap trash: [
    "~/Library/Application Support/dev.yeek.app",
    "~/Library/Caches/dev.yeek.app",
    "~/Library/Logs/dev.yeek.app",
    "~/Library/Preferences/dev.yeek.app.plist",
  ]
end
