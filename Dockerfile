FROM centos:7

RUN yum -y install httpd

RUN yum -y install wget

RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum -y install yum-utils
RUN yum-config-manager --enable remi-php72

RUN yum -y update

RUN yum -y install php php-mcrypt php-cli php-gd php-curl php-pgsql php-ldap php-zip php-fileinfo php-mysql php-pdo_mysql

RUN yum -y install php-mbstring php-simplexml php-dom openssh-server which git gitflow php-hash php-fpm vim-common libtool httpd-devel apr-devel apr mlocate

RUN mkdir /usr/lib/cgi-bin/

WORKDIR /var/www/html/

RUN yum -y install nmap

RUN yum -y install systemd; yum clean all; 

RUN chkconfig httpd on && chkconfig php-fpm on

# RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"  && php composer-setup.php  && php -r "unlink('composer-setup.php');"

# RUN php composer.phar global require "laravel/installer"

EXPOSE 80

CMD ["/usr/sbin/init"]

COPY ./fontes/conf/httpd.conf /etc/httpd/conf/
#COPY ./fontes/conf/mod_fastcgi.conf /etc/httpd/conf.d/
#CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]