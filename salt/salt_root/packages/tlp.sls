include:
  - packages.repos

tlp:
  pkg.installed:
    - name: tlp
    - require:
      - pkgrepo: tlp-repo
  file.managed:
    - name: /etc/default/tlp
    - source: salt://packages/tlp.conf
    - require:
      - pkg: tlp
  cmd.wait:
    - name: tlp start
    - watch:
      - file: tlp
