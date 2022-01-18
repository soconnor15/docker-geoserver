#GeoServer setup
#custom controlled setup

FROM tomcat:9.0
WORKDIR /app
RUN mkdir tmp
RUN apt-get -y install unzip
RUN wget -qcO tmp/geoserver.zip http://sourceforge.net/projects/geoserver/files/GeoServer/2.19.4/geoserver-2.19.4-war.zip
RUN unzip -qo tmp/geoserver.zip -d /usr/local/tomcat/webapps/
COPY ./log4j-1.2.17.norce.jar usr/local/tomcat/webapps/geoserver/webapps/WEB-INF/lib

RUN /usr/local/tomcat/webapps/