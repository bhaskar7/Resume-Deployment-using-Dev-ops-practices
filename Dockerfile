FROM httpd
COPY /path/my_html_code /usr/local/apache2/htdocs/
EXPOSE 80
