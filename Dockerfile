FROM jenkins:2.32.1

USER root
RUN apt-get update && apt-get install -y bash docker-engine
USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
