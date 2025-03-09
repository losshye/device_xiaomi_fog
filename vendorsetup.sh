# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b refresh https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone prebuilt kernel
git clone https://github.com/alternoegraha/device_xiaomi_fog-kernel device/xiaomi/fog-kernel

# Clone PixelOS hardware/xiaomi
git clone -b fifteen https://github.com/VoltageOs/hardware_xiaomi hardware/xiaomi

# Sign-Key
rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14-backup vlp && cp -R vlp/* vendor/ && rm -rf vlp