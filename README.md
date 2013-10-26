Package JBoss EAP 6 for debian

Why?
====

There are no jboss packaging neither for JBoss AS 6 nor for AS 7/EAP 6.

Package will install JBoss in /opt/jboss-eap, configure jboss user and add init script.
Note that JBoss listens to 127.0.0.1 by default.

How to use
==========

    git clone --recursive https://github.com/rualsa/eap-build-debian.git
    apt-get install devscripts openjdk-6-jdk wget unzip debhelper
    make

sign and upload to your repo or install with dpkg



Prerequisite
============

Tested on Debian Wheezy and Ubuntu 12.04 LTS
- openjdk-6-jdk or Oracle JDK 6 (for building jboss)
- devscripts, debhelper (for building package)
- wget
- unzip
- at least 1GB of RAM


Versions
========

At this moment JBoss EAP 6.1.1 is the only supported version of JBoss.




