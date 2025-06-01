#!/bin/sh

# create virtual interface
pactl load-module module-null-sink media.class=Audio/Source/Virtual sink_name=Microphone channel_map=front-left,front-right

# front-left
pw-link alsa_input.usb-Burr-Brown_from_TI_USB_Audio_CODEC-00.analog-stereo-input:capture_FL Microphone:input_FL
# front-right
pw-link alsa_input.usb-Burr-Brown_from_TI_USB_Audio_CODEC-00.analog-stereo-input:capture_FL Microphone:input_FR

