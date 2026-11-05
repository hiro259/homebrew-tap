cask "oniwa" do
  version "0.1.1"
  sha256 "4a89d91fa7b4bddffe7746781c3a30dc20f458bc34fb55c40026b738070bd660"

  url "https://github.com/hiro259/oniwa/releases/download/v#{version}/ONIWA-v#{version}-macos.dmg"
  name "ONIWA"
  desc "Search and switch macOS Spaces by name"
  homepage "https://github.com/hiro259/oniwa"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "ONIWA.app"

  caveats <<~EOS
    ONIWA needs Accessibility permission to switch macOS Spaces.
    Grant it in System Settings > Privacy & Security > Accessibility.
    Enable Mission Control's Control+Left/Right Space shortcuts.
  EOS
end
