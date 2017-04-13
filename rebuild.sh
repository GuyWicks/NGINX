#!/bin/bash

#
# Recreate the links to the NGINX config
#

NGINX_HOME=/etc/nginx
NGINX_USER=/home/ngsupport/nginx-conf
NGINX_LOCAL=$NGINX_HOME/local.d
NGINX_INCLUDE=$NGINX_HOME/include.d
NGINX_SITES=$NGINX_HOME/sites-available
NGINX_HTML=/usr/share/nginx/html
SHIB_ETC=/etc/shibboleth

CONFIG_ROOT=$NGINX_HTML/config
CONFIG_COMMON=$CONFIG_ROOT/common
CONFIG_MAP=$CONFIG_ROOT/map
CONFIG_SITES=$CONFIG_ROOT/sites

# Clear existing links
rm $CONFIG_COMMON/*
rm $CONFIG_MAP/*
rm $CONFIG_SITES/*

# /common
ln -s $NGINX_INCLUDE/cache.conf                          $CONFIG_COMMON/cache.html
ln -s $NGINX_INCLUDE/cdn.inc                            $CONFIG_COMMON/cdn.html
ln -s $NGINX_INCLUDE/health-and-maintenance.inc         $CONFIG_COMMON/health-and-maintenance.html
ln -s $NGINX_INCLUDE/health-check.conf                  $CONFIG_COMMON/health-check.html
ln -s $NGINX_INCLUDE/html-fix.inc                       $CONFIG_COMMON/html-fix.html
ln -s $NGINX_INCLUDE/limits.conf                        $CONFIG_COMMON/limits.html
ln -s $NGINX_INCLUDE/listen-http.inc                  $CONFIG_COMMON/http.html
ln -s $NGINX_INCLUDE/listen-https.inc                  $CONFIG_COMMON/https.html
ln -s $NGINX_INCLUDE/mapping.conf                       $CONFIG_COMMON/mapping.html
ln -s $NGINX_INCLUDE/proxy-pass.inc                     $CONFIG_COMMON/proxy-pass.html
ln -s $NGINX_INCLUDE/security.inc                       $CONFIG_COMMON/security.html

ln -s $NGINX_INCLUDE/error.conf                         $CONFIG_COMMON/error.html
ln -s $NGINX_HOME/nginx.conf                            $CONFIG_COMMON/nginx-conf.html
ln -s $NGINX_LOCAL/upstream.conf                        $CONFIG_COMMON/upstream.html
ln -s $SHIB_ETC/shibboleth2.xml                         $CONFIG_COMMON/shibboleth2.html

# /map
ln -s $NGINX_INCLUDE/client-ip.map                      $CONFIG_MAP/client-ip.html
ln -s $NGINX_INCLUDE/cors-whitelist.map                 $CONFIG_MAP/cors-whitelist.map
ln -s $NGINX_INCLUDE/ip-blacklist.geo                   $CONFIG_MAP/ip-blacklist.html
ln -s $NGINX_INCLUDE/ip-channel.map                     $CONFIG_MAP/ip-channel.html
ln -s $NGINX_INCLUDE/ip-range.geo                       $CONFIG_MAP/ip-range.html
ln -s $NGINX_INCLUDE/ip-whitelist.geo                   $CONFIG_MAP/ip-whitelist.html
ln -s $NGINX_INCLUDE/proxy-pass.map                     $CONFIG_MAP/proxy-pass.html
ln -s $NGINX_INCLUDE/redirect.map                       $CONFIG_MAP/redirect.html
ln -s $NGINX_INCLUDE/redirect-external.map              $CONFIG_MAP/redirect-external.html
ln -s $NGINX_INCLUDE/user-agent.map                     $CONFIG_MAP/user-agent.html

# /sites
ln -s $NGINX_SITES/0080-bl.uk.conf                      $CONFIG_SITES/bl-uk.html
ln -s $NGINX_SITES/0080-bnb.bl.uk.conf                     $CONFIG_SITES/bnb.html
ln -s $NGINX_SITES/0080-data.bl.uk.conf                       $CONFIG_SITES/data.html
ln -s $NGINX_SITES/0080-ethos.bl.uk.conf                $CONFIG_SITES/ethos.html
ln -s $NGINX_SITES/0080-hviewer.bl.uk.conf              $CONFIG_SITES/hviewer.html
ln -s $NGINX_SITES/0080-indiafamily.bl.uk.conf          $CONFIG_SITES/indiafamily.html
ln -s $NGINX_SITES/0080-solr.ad.bl.uk.conf              $CONFIG_SITES/solr.html
ln -s $NGINX_SITES/0080-sounds.bl.uk.conf               $CONFIG_SITES/sounds.html
ln -s $NGINX_SITES/0080-www.bl.uk.boxoffice.site        $CONFIG_SITES/boxoffice.html
ln -s $NGINX_SITES/0080-www.bl.uk.common.site           $CONFIG_SITES/common.html
ln -s $NGINX_SITES/0080-www.bl.uk.conf                  $CONFIG_SITES/www-bl-uk.html
ln -s $NGINX_SITES/0080-www.bl.uk.home-page.site        $CONFIG_SITES/homne-page.html
ln -s $NGINX_SITES/0080-www.bl.uk.manuscripts.site      $CONFIG_SITES/manuscripts.html
ln -s $NGINX_SITES/0080-www.bl.uk.shibboleth.site       $CONFIG_SITES/shibboleth.html
ln -s $NGINX_SITES/0080-www.bl.uk.shop.site             $CONFIG_SITES/shop.html
ln -s $NGINX_SITES/0443-ssoa.bl.uk.conf                 $CONFIG_SITES/ssoa.html

