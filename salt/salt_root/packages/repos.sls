tlp-repo:
  pkgrepo.managed:
    - name: deb http://ppa.launchpad.net/linrunner/tlp/ubuntu raring main
    - ppa: linrunner/tlp
    - comps: main
    - file: /etc/apt/sources.list.d/linrunner-tlp-raring.list

salt-repo:
  pkgrepo.managed:
    - name: deb http://ppa.launchpad.net/saltstack/salt/ubuntu raring main
    - ppa: saltstack/salt
    - comps: main
    - file: /etc/apt/sources.list.d/saltstack-salt-raring.list

