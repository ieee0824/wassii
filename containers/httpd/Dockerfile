FROM httpd:2.4

RUN set -e \
	&& apt-get update -y \
	&& apt-get install -y mysql-client

RUN rm -f /usr/local/apache2/htdocs/index.html

RUN sed -ri 's/#LoadModule cgid_module/LoadModule cgid_module/g; \ 
             s/DirectoryIndex index.html/DirectoryIndex index.cgi/g; \ 
             s/Options Indexes FollowSymLinks/Options Indexes FollowSymLinks ExecCGI/g; \
             s/#AddHandler cgi-script .cgi/AddHandler cgi-script .pl .cgi .sql/g' /usr/local/apache2/conf/httpd.conf

COPY exec_sql.sh /bin/exec_sql.sh
COPY index.sql /usr/local/apache2/htdocs/index.sql

RUN set -e \
	&& chmod +x /bin/exec_sql.sh \
	&& chmod +x /usr/local/apache2/htdocs/index.sql

ENV _POSIX2_VERSION 199209
