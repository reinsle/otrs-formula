install_otrs_pkgs:
  pkg:
    - installed
    - names:
      - postgresql
      - libarchive-zip-perl
      - libcrypt-eksblowfish-perl
      - libcrypt-ssleay-perl
      - libtimedate-perl
      - libdbi-perl
      - libdbd-mysql-perl
      - libdbd-odbc-perl
      - libdbd-pg-perl
      - libencode-hanextra-perl
      - libgd-gd2-perl
      - libgd-text-perl
      - libgd-graph-perl
      - libio-socket-ssl-perl
      - libjson-xs-perl
      - libmail-imapclient-perl
      - libio-socket-ssl-perl
      - libapache2-mod-perl2
      - libnet-dns-perl
      - libnet-ldap-perl
      - libpdf-api2-perl
      - libtemplate-perl
      - libtemplate-perl
      - libtext-csv-xs-perl
      - libxml-parser-perl
      - libyaml-libyaml-perl
      - apache2 
      - libapache2-mod-perl2

remove_otrs_pkgs:
  pkg:
    - purged
    - names:
      - nfs-common
      - rpcbind

otrs:
  user:
    - present
    - name: otrs
    - shell: /bin/false
    - fullname: OTRS User
    - uid: 500
    - gid: 100
    - home: /opt/otrs
    - groups:
      - www-data

