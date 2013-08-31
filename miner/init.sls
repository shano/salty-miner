minerd:
  service:
    - running
    - enable: True

minerd-deps:
  pkg: 
    - installed
    - names: 
      - curl
      - git
      - automake
      - gcc
      - make
      - libcurl4-gnutls-dev

/etc/minerd.conf:
  file.managed:
    - source: salt://miner/minerd.conf
    - user: root
    - mode: 755

minerd_setup:
  cmd.script:
    - source: salt://miner/minerd_install.sh
    - user: root
    - shell: /bin/bash
    - unless: "which minerd | grep /usr/bin/minerd"
    - require:
      - pkg: minerd-deps


/etc/init.d/minerd:
  file.managed:
    - source: salt://miner/init.sh
    - user: root
    - mode: 777
