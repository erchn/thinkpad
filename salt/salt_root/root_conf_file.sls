root_conf_file:
  file.managed:
    - name: /tmp/salt-root-file
    - user: root
    - group: root
    - mode: 0644
