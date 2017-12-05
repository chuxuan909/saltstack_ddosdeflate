install_deflate:
    file.recurse:
      - name: /opt/ddosdeflate_install
      - source: salt://ddosdeflate
      - user: root
      - file_mode: 644
      - dir_mode: 755
      - mkdir: True
      - clean: True
    cmd.script:
      - source: salt://ddosdeflate/inddosdeflate_env.sh
      - user: root
