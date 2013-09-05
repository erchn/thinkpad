include:
  - root_conf_file

brightness:
  file.managed:
    - name: /usr/bin/brightness
    - source: salt://lcd/brightness
    - mode: 0754
    - use:
      - file: root_conf_file

udev-brightness:
  file.managed:
    - name: /etc/udev/rules.d/50-powersave.rules
    - source: salt://lcd/50-powersave.rules
    - use:
      - file: root_conf_file
    - require:
      - file: brightness
