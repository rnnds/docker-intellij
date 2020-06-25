FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y \
    bison \
    gperf \
    lib32gcc1 \
    lib32stdc++6 \
    lib32z1 \
    libc6-i386 \
    libxml2-utils \
    make \
    zip \
    wget
RUN wget https://download.jetbrains.com/idea/ideaIC-2019.3.5.tar.gz ideaIC-2019.3.5.tar.gz
RUN tar -xvf ideaIC-2019.3.5.tar.gz
CMD ./idea-IC-193.7288.26/bin/idea.sh