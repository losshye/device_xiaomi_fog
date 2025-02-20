# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b refresh https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone prebuilt kernel
git clone https://github.com/alternoegraha/device_xiaomi_fog-kernel device/xiaomi/fog-kernel

# Clone PixelOS hardware/xiaomi
git clone -b fifteen https://github.com/PixelOS-AOSP/hardware_xiaomi hardware/xiaomi