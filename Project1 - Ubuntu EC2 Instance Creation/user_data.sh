#!/bin/bash
set -e
for i in {1..5}; do
  apt-get update -y && break
  sleep 10
done
apt-get install -y fontconfig openjdk-21-jdk wget gnupg
java -version
wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list
for i in {1..5}; do
  apt-get update -y && break
  sleep 10
done
apt-get install -y jenkins
systemctl enable jenkins
systemctl start jenkins