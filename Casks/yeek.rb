cask "yeek" do
  version "2.0.0-alpha.17"
  sha256 "8cef1c02a15871bd5e724f79781c3052ff20d4028022103e539e98b6f6df42c0"

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
