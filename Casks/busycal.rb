cask "busycal" do
  version "3.10.3,401047"
  sha256 "7eeeb857f05a5eb1e9c274435df284a0faa33d4f081c41f307c73638b33d6a41"

  url "https://www.busymac.com/download/BusyCal.zip"
  appcast "https://www.busymac.com/busycal/news.plist"
  name "BusyCal"
  homepage "https://busymac.com/busycal/index.html"

  auto_updates true

  pkg "BusyCal Installer.pkg"

  uninstall pkgutil: "com.busymac.busycal#{version.major}.pkg",
            quit:    "N4RA379GBW.com.busymac.busycal#{version.major}.alarm",
            signal:  ["TERM", "com.busymac.busycal#{version.major}"]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal#{version.major}.sfl*",
    "~/Library/Containers/com.busymac.busycal#{version.major}",
    "~/Library/Containers/N4RA379GBW.com.busymac.busycal#{version.major}.alarm",
    "~/Library/Group Containers/com.busymac.busycal#{version.major}",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal#{version.major}",
  ]
end
