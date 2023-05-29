:: This is a batch file to prepare the Oculus Quest 2 for recording in 1080p.
:: Device will reset those settings after complete shutdown, or restart.

echo "Setup started!"
adb devices
adb shell setprop debug.oculus.capture.width 1920
adb shell setprop debug.oculus.capture.height 1080
adb shell setprop debug.oculus.capture.bitrate 10000000
adb shell setprop debug.oculus.foveation.level 0
adb shell setprop debug.oculus.capture.fps 30
echo "Setup finished!"

@pause
