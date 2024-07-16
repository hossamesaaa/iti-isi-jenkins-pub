FROM jenkins/jenkins:lts

USER root

# Install ssh-keyscan
RUN apt-get update && apt-get install -y openssh-client

# Add GitHub's host key
RUN mkdir -p /var/jenkins_home/.ssh && ssh-keyscan github.com >> /var/jenkins_home/.ssh/known_hosts

USER jenkins
