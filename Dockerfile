FROM httpd:2.4-alpine

RUN echo "<pre>${git show HEAD --no-patch}</pre>" > /usr/local/apache2/htdocs/index.html
