FROM httpd:2.4-alpine

RUN apk add git

WORKDIR /opt
COPY .git .
RUN echo "<pre>$(git show HEAD --no-patch)</pre>" > /usr/local/apache2/htdocs/index.html
