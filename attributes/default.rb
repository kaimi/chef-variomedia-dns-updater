#
# Cookbook Name:: variomedia-dns-updater
#
# Copyright 2013, ka’imi
#

default['variomedia-dns-updater']['dir'] = "/srv/variomedia-dns-updater"
default['variomedia-dns-updater']['repository'] = "git://github.com/kaimi/variomedia-dns-updater.git"
default['variomedia-dns-updater']['version'] = "master"
default['variomedia-dns-updater']['user'] = "daemon"
default['variomedia-dns-updater']['email'] = "mail@domain.tld"
default['variomedia-dns-updater']['frequency'] = 5 # in minutes
default['variomedia-dns-updater']['logfile'] = "/var/log/variomedia-dns-updater.log"

# required attributes
default['variomedia-dns-updater']['hostname'] = "sub.domain.tld"
default['variomedia-dns-updater']['domains'] = ["sub1.domain.tld", "sub2.domain.tld", "domain.tld"]
default['variomedia-dns-updater']['username'] = "some@email.address"
default['variomedia-dns-updater']['password'] = "anditspassword"

# optional attributes
default['variomedia-dns-updater']['site'] = nil
