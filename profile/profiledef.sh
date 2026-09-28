#!/usr/bin/env bash
iso_name="nana-os"
iso_label="NANA_OS_$(date +%Y%m)"
iso_publisher="Nana OS <https://github.com/>"
iso_application="Nana OS Emulation & Web Center Live"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
archs=('x86_64')
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '19')
file_permissions=(
  ["/etc/shadow"]="0:0:0400"
  ["/root"]="0:0:0750"
  ["/home/nana"]="1000:1000:0755"
)
