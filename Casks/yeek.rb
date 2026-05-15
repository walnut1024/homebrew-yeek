cask "yeek" do
  version "2.0.0-alpha.19"
  sha256 "d77b229abf3f01c0e5b5ab1745c735335b5e3e966743e0dafab4489c58e0a149"

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
