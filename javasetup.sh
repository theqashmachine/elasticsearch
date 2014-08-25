#!/bin/bash
# Installs Oracle JDK
# @author Erik Paulsson
 
# the name of the java package to install
JAVA_PKG=oracle-java7-installer
 
# the name of the directory created by the installer in /usr/lib/jvm
JAVA_DIR=java-7-oracle
 
# Add the WebUpd8 Java repo
echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main' > /etc/apt/sources.list.d/webupd8team-java.list
echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main' >> /etc/apt/sources.list.d/webupd8team-java.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
apt-get update
 
# Accept the Oracle Java license in an automated fashion, otherwise the
# 'apt-get install' of the package will prompt for accepting the Oracle license
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
 
# Now we can install java without any prompts
apt-get install $JAVA_PKG -y
 
# Create symlinks for default-java under /usr/lib/jvm
# /usr/lib/jvm/default-java is a standard on debian systems and
# Tomcat looks to see if it exists for setting JAVA_HOME
sudo ln -s /usr/lib/jvm/$JAVA_DIR /usr/lib/jvm/default-java
# This symlink is used by the 'update-java-alternatives' command
# in order to know which commands are located where for creating symlinks to them in /etc/alternatives
sudo ln -s /usr/lib/jvm/.$JAVA_DIR.jinfo /usr/lib/jvm/.default-java.jinfo
sudo update-java-alternatives -s default-java

