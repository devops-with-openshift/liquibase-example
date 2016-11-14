#FROM jboss-fuse-6/fis-java-openshift:latest
FROM docker.io/fabric8/java-jboss-openjdk8-jdk
RUN mkdir -p /deployments && chmod 775 /deployments
ADD . /deployments
CMD ["sh", "-c", "/deployments/bin/run.sh"]