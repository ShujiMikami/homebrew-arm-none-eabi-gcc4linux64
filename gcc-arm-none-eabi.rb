require 'formula'

class GccArmNoneEabi < Formula
  homepage "https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads"
  version '10.3-2021.10'
  if OS.linux?
    url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2"
  elseif OS.mac?
    url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-mac.tar.bz2"
  end
  #sha256 "97dbb4f019ad1650b732faffcc881689cedc14e2b7ee863d390e0a41ef16c9a3"

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
