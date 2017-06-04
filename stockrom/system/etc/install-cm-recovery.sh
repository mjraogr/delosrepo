#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7462912 d2e071e1f099095a5a44e62cc63af3da2c94d770 5169152 fe8efa7df108224e1a4987ff9bd7868f91346df8
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p16:7462912:d2e071e1f099095a5a44e62cc63af3da2c94d770; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p8:5169152:fe8efa7df108224e1a4987ff9bd7868f91346df8 EMMC:/dev/block/mmcblk0p16 d2e071e1f099095a5a44e62cc63af3da2c94d770 7462912 fe8efa7df108224e1a4987ff9bd7868f91346df8:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
