touchpad-sensitivity:
  cmd.run:
    - name: echo 175 > /sys/devices/platform/i8042/serio1/sensitivity
