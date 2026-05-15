cask "yeek" do
  version "2.0.0-alpha.16"
  sha256 "4bfc823c25d7375221abde53ee8110e46a62083656e7d7dd47c1798a50ab56be"

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
