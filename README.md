# zabbix-ssl-expire DRAFT

This is a simple receipt for checking expire date (how many days left) for any domain from your zabbix server.

What you need:

1. openssl client. If your distro does not have it out of the box, see here: https://www.quora.com/How-can-I-install-OpenSSL-in-Linux
1. Copy script ssl_expiration_date.sh at external scripts of your zabbix agent directory. (By default it hosted here: /usr/lib/zabbix/externalscripts, but you can get a correct address from /etc/zabbix/zabbix_agents.conf file
1. Create a custom config file on your zabbix server config directory.
1. Add a new item and provide domain name for get 
