FROM openjdk:8

RUN apt-get update -qq && apt-get install -qq curl git nano npm && apt-get clean

RUN curl -sf -o /opt/apache-maven-bin.tar.gz http://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz; \
	tar xzf /opt/apache-maven-bin.tar.gz -C /opt/; \
	rm /opt/apache-maven-bin.tar.gz; \
	ln -s /opt/apache-maven-3.3.9 /opt/maven	
ENV MAVEN_HOME /opt/maven

ENV JENKINS_HOME /opt/jenkins
ENV JENKINS_MIRROR http://mirrors.jenkins-ci.org
RUN mkdir -p $JENKINS_HOME
RUN curl -sf -o /opt/jenkins/jenkins.war -L $JENKINS_MIRROR/war/latest/jenkins.war
RUN mkdir -p $JENKINS_HOME/plugins; for plugin in greenballs; \
	do curl -sf -o $JENKINS_HOME/plugins/${plugin}.hpi -L $JENKINS_MIRROR/plugins/${plugin}/latest/${plugin}.hpi; done
VOLUME $JENKINS_HOME/data
WORKDIR $JENKINS_HOME

EXPOSE 8080
CMD [ "java", "-jar", "jenkins.war" ]

