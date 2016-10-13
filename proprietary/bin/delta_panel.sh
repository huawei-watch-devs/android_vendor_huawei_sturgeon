#!/system/bin/sh
if [ ! -f /sys/class/graphics/fb0/mdss_fb_delta_pixel ]
then
	exit 0
fi
ret=$(cat /sys/class/graphics/fb0/mdss_fb_delta_pixel)
if [ "$ret" -eq "1" ]
then
	setprop ro.hwc.is_delta_panel true
else
	setprop ro.hwc.is_delta_panel false
fi
