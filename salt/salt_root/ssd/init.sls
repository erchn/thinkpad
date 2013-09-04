include:
  - root_conf_file

/dev/mapper/ubuntu--vg-root:
  mount.mounted:
    - name: /
    - device: /dev/mapper/ubuntu--vg-root
    - fstype: ext4
    - opts: defaults,relatime,discard,errors=remount-ro
    - pass_num: 1

swappiness:
  file.managed:
    - use:
      - file: root_conf_file
    - name: /etc/sysctl.d/60-swappiness.conf
    - contents: vm.swappiness=1

vfs_cache_pressure:
  file.managed:
    - use:
      - file: root_conf_file
    - name: /etc/sysctl.d/60-vfs_cache_pressure.conf
    - contents: vm.vfs_cache_pressure=50

sysctl -p /etc/sysctl.d/60*.conf:
  cmd.wait:
    - watch:
      - file: vfs_cache_pressure
      - file: swappiness
