# Meta-comitup

Meta-comitup is a Yocto meta layer that enable the use of the [Comitup](https://github.com/davesteele/comitup) (Created by David Steele) in yocto distributions currently only tested with Raspberry Pi but in theory it should with other wifi enabled devices.

# Requirements

  - Yocto thud
  - meta-openembedded/meta-oe
  - meta-openembedded/meta-networking
  - Python3
  - Systemd based image
  - Networkmanager

### Installation

Add this layer to your Yocto environment in the bblayers file
Add the comitup package to your image

### TODO

  - Test with non-raspberrypi boards
  - Find a solution for the web_path_hack.patch
  - Found a solution for disabling dnsmasq https://github.com/davesteele/comitup/issues/87
