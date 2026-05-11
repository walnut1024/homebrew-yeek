cask "yeek" do
  version "2.0.0-alpha.9"
  sha256 "21fa06c5cdcdfbb986b2a3e27bc89eda9dd1f75381b8fb8b757329e6a8d9e5cf"

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
