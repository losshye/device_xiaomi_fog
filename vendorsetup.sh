# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b another-reset https://github.com/alternoegraha/wwy_kernel_xiaomi_fog_rebase kernel/xiaomi/fog

# Clone LineageOS' hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..

#sign
rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14-backup vlp && cp -R vlp/* vendor/ && rm -rf vlp
