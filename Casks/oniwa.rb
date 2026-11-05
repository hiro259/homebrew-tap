cask "oniwa" do
  version "0.1.2"
  sha256 "33bd9e8dff46d77301339ce5650b9e108bcdb193c8e1f6bd3d179b288e93f497"

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
