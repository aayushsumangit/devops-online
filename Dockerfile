FROM ubuntu:latest
RUN apt update -y
RUN apt install apache2 wget unzip curl net-tools telnet -y
ENV DEBIAN_FRONTEND=non-interactive
#RUN yum clean all
#RUN service apache2 start
#CMD ["/usr/sbin/apache2ctl" , "-D" , "FOREGROUND"]
#CMD service apache2 start
#CMD ["service", "apache2", "start"]

CMD ["apache2ctl", "-D", "FOREGROUND"]

WORKDIR /var/www/html/

RUN wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip
RUN unzip 2136_kool_form_pack.zip
RUN cp -R 2136_kool_form_pack/* .
RUN rm -rf 2136_kool_form_pack.zip 2136_kool_form_pack

EXPOSE 80
