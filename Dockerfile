FROM httpd

CMD apt-get update \
        && apt-get install -y git gcc make \
        && git clone https://github.com/maiha/mod_cband /tmp/ \
        && cd /tmp/ \
        && ./configure \
        && make \
        && make install \
        && rm -rf /tmp/* \
        && cp /usr/local/apache2/modules/mod_cband.so /tmp/

