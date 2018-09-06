#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:36382030:8358bd8290fede0ae6cf6e0fa0e0e44376817d3d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:31819082:19e8f9df79376d4811fdc663d96e40fe763367b3 EMMC:/dev/block/bootdevice/by-name/recovery 8358bd8290fede0ae6cf6e0fa0e0e44376817d3d 36382030 19e8f9df79376d4811fdc663d96e40fe763367b3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
