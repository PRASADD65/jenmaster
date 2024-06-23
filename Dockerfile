FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y apache2 curl
EXPOSE 80
WORKDIR /usr/share/doc/info/html/workspace/project1
COPY index.html /usr/share/doc/info/html/workspace/project1/index.html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
