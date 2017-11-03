#!/sbin/sh

# Script originaly created by flar2@github.com
# https://github.com/flar2/android_kernel_oneplus_msm8996

echo \#!/sbin/sh > /tmp/createnewboot.sh
echo /tmp/mkbootimg --kernel /tmp/Image.gz-dtb --ramdisk /tmp/boot.img-ramdisk.gz --cmdline \"$(cat /tmp/cmdline.cfg)\" --base 0x80000000 --kernel_offset 0x00008000 --pagesize 4096 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --output /tmp/newboot.img >> /tmp/createnewboot.sh
chmod 777 /tmp/createnewboot.sh
/tmp/createnewboot.sh
return $?


