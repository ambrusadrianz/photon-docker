FROM adoptopenjdk:11-jre-hotspot

RUN curl https://github.com/komoot/photon/releases/download/0.3.2/photon-0.3.2.jar -o photon.jar -Ls

RUN mkdir /opt/app

RUN mv photon.jar /opt/app/

ENTRYPOINT ["java", "-jar", "/opt/app/photon.jar"]
