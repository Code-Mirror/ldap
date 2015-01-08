FROM ubuntu:latest

MAINTAINER nmcspadden@gmail.com

RUN apt-get update
RUN apt-get install -y slapd ldap-utils -qq
RUN apt-get install -y nano curl
ADD cn={4}samba.ldif /etc/ldap/slapd.d/cn\=config/cn\=schema/cn={4}samba.ldif
ADD cn={5}apple_auxillary.ldif /etc/ldap/slapd.d/cn\=config/cn\=schema/cn={5}apple_auxillary.ldif
ADD cn={6}apple.ldif /etc/ldap/slapd.d/cn\=config/cn\=schema/cn={6}apple.ldif

EXPOSE 389 686
