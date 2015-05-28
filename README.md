###
# Documentação Inicial do ambiente de desenvolvimento Vagrant VM206
###

Instale o VirtualBox:
    - https://www.virtualbox.org/wiki/Downloads

Instale o Vagrant:
    - https://www.vagrantup.com/downloads.html

Faça o download do VagrantFile em qualquer local da sua máquina: (ex: /home/gtakeda/vagrant/)
    # (endereço provisório)
    - https://github.com/gabrielrtakeda/vagrant.folha

Após o download, acesse o diretório `vagrant.folha` altere a seguinte linha do VagrantFile:
    - config.vm.synced_folder "/media/dev_desenvolvedores/110/", "/srv/dev_desenvolvedores/110", :create => true
        *** OBS:
            "/media/dev_desenvolvedores/110/" => altere com o caminho da pasta que contém os arquivos do dev_htdocs na sua máquina

Feito isso, rode o seguinte comando duas vezes:
    - vagrant up (a primeira vez irá instalar o plugin Vagrant Reload)
    - vagrant up (agora sim começa a configuração do ambiente)


Releases:
    - Desabilita SELinux do CentOS
    - Instala/Atualiza todos os packages necessários do yum
    - Atualiza os repositórios do yum com os mesmos da vm206
    - Instalação e Importação de Configurações do Oracle Instant Client
    - Instalação e Importação de Configurações do FreeTDS
    - Instalação do Apache
    - Instalação do PHP


TODO:
    - Importar configurações de vhosts do Apache
    - Importar arquivo /etc/hosts (ou habilitar diretamento pelo Vagrant)
    - Importar/Adaptar `php.ini`
    - Extensões do PHP que precisam ser configuradas
        - geoip
        - ibm_db2
        - magickwand
        - mailparse
        - memcache
        - mongo
        - pdo_mysql
        - pgsql
        - saprfc
        - svn
        - xdebug
    - Instalar e Configurar ElasticSearch
    - Instalar e Configurar Squid
    - Instalar e Configurar Apache Tomcat v7.0.34
    - Instalar e Configurar Apache Solr v4.0.0
    - Instalar e Configurar MongoDB
    - Instalar e Configurar Memcached

    - Ao acessar 127.0.0.1:8080 (localhost:configured_port) acusa 403 Forbidden, o Apache está rodando mas provavelmente não tem permissão de acesso.

Comparações:

###
# APACHE
# Command: /usr/local/apache2/bin/httpd -M
###
VM206:                                          Vagrant VM206

Loaded Modules:                                 Loaded Modules:
 (static) core_module                            (static) core_module
 (static) authn_file_module                      (static) authn_file_module
 (static) authn_default_module                   (static) authn_default_module
 (static) authz_host_module                      (static) authz_host_module
 (static) authz_groupfile_module                 (static) authz_groupfile_module
 (static) authz_user_module                      (static) authz_user_module
 (static) authz_default_module                   (static) authz_default_module
 (static) auth_basic_module                      (static) auth_basic_module
 (static) include_module                         (static) include_module
 (static) filter_module                          (static) filter_module
 (static) log_config_module                      (static) log_config_module
 (static) env_module                             (static) env_module
 (static) expires_module                         (static) expires_module
 (static) headers_module                         (static) headers_module
 (static) setenvif_module                        (static) setenvif_module
 (static) version_module                         (static) version_module
 (static) proxy_module                           (static) proxy_module
 (static) proxy_connect_module                   (static) proxy_connect_module
 (static) proxy_ftp_module                       (static) proxy_ftp_module
 (static) proxy_http_module                      (static) proxy_http_module
 (static) proxy_scgi_module                      (static) proxy_scgi_module
 (static) proxy_ajp_module                       (static) proxy_ajp_module
 (static) proxy_balancer_module                  (static) proxy_balancer_module
 (static) ssl_module                             (static) ssl_module
 (static) mpm_prefork_module                     (static) mpm_prefork_module
 (static) http_module                            (static) http_module
 (static) mime_module                            (static) mime_module
 (static) status_module                          (static) status_module
 (static) autoindex_module                       (static) autoindex_module
 (static) asis_module                            (static) asis_module
 (static) cgi_module                             (static) cgi_module
 (static) negotiation_module                     (static) negotiation_module
 (static) dir_module                             (static) dir_module
 (static) actions_module                         (static) actions_module
 (static) userdir_module                         (static) userdir_module
 (static) alias_module                           (static) alias_module
 (static) rewrite_module                         (static) rewrite_module
 (static) so_module                              (static) so_module
 (shared) deflate_module                         (shared) deflate_module
 (shared) php5_module                            (shared) php5_module
Syntax OK                                       Syntax OK

###
# PHP
# Command: php -m
###
VM206:                  Version                   Vagrant VM206:

[PHP Modules]                                   [PHP Modules]
bcmath                                          bcmath
calendar                                        calendar
Core                                            Core
ctype                                           ctype
curl                                            curl
date                                            date
dom                                             dom
ereg                                            ereg
exif                                            exif
fileinfo                                        fileinfo
filter                                          filter
gd                                              gd
geoip                   (v1.4.8)                ! (Instalado v2.2.1 - Necessário instalar versão correta e configurar no php)
hash                                            hash
ibm_db2                 (v5.3.6)                ! (Instalar & Configurar)
iconv                                           iconv
json                                            json
ldap                                            ldap
libxml                                          libxml
magickwand                                      ! (Instalar e Configurar)
mailparse                                       ! (Instalar e Configurar)
mbstring                                        mbstring
mcrypt                                          mcrypt
memcache                                        ! (Instalar e Configurar)
mongo                                           ! (Instalar e Configurar)
mssql                                           mssql
mysql                                           mysql
mysqli                                          mysqli
mysqlnd                                         mysqlnd
oci8                                            oci8
openssl                                         openssl
pcre                                            pcre
PDO                                             PDO
pdo_mysql                                       ! (Configurar)
pdo_sqlite                                      pdo_sqlite
pgsql                   (v8.1.23)               ! (Configurar)
Phar                                            Phar
posix                                           posix
pspell                                          pspell
Reflection                                      Reflection
saprfc                                          ! (Instalar e Configurar)
session                                         session
SimpleXML                                       SimpleXML
soap                                            soap
SPL                                             SPL
SQLite                                          SQLite
sqlite3                                         sqlite3
standard                                        standard
svn                                             ! (Configurar)
tokenizer                                       tokenizer
xdebug                                          ! (Instalar e Configurar)
xml                                             xml
xmlreader                                       xmlreader
xmlrpc                                          xmlrpc
xmlwriter                                       xmlwriter
xsl                                             xsl
zip                                             zip
zlib                                            zlib

[Zend Modules]
Xdebug                                          !

!!! Extensões que estão faltando localizadas em:
        VM206: /usr/local/php5/lib/php/extensions/no-debug-non-zts-20090626/

###
# YUM: Há algumas diferenças entre os packages instalados.
# Command Comparison: yum list installed
###
