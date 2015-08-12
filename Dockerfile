FROM centos:centos7
MAINTAINER "Ralf Bosz <ralf@bosz.com>"

ENV JRE_HOME /opt/jre1.8.0_51

# Install JRE8
WORKDIR /opt
RUN curl -Lkj -H "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jre-8u51-linux-x64.tar.gz | \
    tar xz && \
    chown -R root:root ${JRE_HOME} && \
    rm -f ${JRE_HOME}/COPYRIGHT && \
    rm -f ${JRE_HOME}/LICENSE && \
    rm -f ${JRE_HOME}/README.html && \
    rm -f ${JRE_HOME}/THIRDPARTYLICENSEREADME* && \
    rm -f ${JRE_HOME}/Welcome.html
