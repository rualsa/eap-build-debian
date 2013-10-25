Package JBoss EAP 6 for debian

Why?
====

There are no jboss packaging neither for JBoss AS 6 nor for AS 7/EAP 6.

Package will install JBoss in /opt/jboss-eap, configure jboss user and add init script.
Note that JBoss listens to 127.0.0.1 by default.

How to use
==========

    git clone --recursive https://github.com/rualsa/eap-build-debian.git
    make

sign and upload to your repo or install with dpkg



Prerequisite
============

Debian or ubuntu (I used Debian Wheezy)
- openjdk-6-jdk/openjdk-7-jdk/oracle-java7-installer (for building jboss)
- devscripts (for building package)
- wget
- unzip
- at least 1GB of RAM


Versions
========

At this moment JBoss EAP 6.1.1 is the only supported version of JBoss




