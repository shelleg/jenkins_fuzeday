FROM jenkins
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
