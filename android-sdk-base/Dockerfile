FROM azul/zulu-openjdk-debian:8

# Use UTF-8 locale
RUN apt-get -qq update
RUN apt-get -qqy install locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install depenendencies
RUN apt-get -qqy install \
lib32stdc++6 unzip wget expect git curl ssh tar gzip ca-certificates

RUN useradd -u 1000 -M -s /bin/bash android
RUN chown 1000 /opt

USER android
ENV ANDROID_SDK_HOME /opt/android-sdk
ENV ANDROID_HOME /opt/android-sdk

# Download and unzip Android SDK
RUN cd /opt && wget -q https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip -O android-sdk.zip
RUN cd /opt && mkdir android-sdk
RUN cd /opt && unzip android-sdk.zip -d android-sdk
RUN cd /opt && rm -f android-sdk.zip

ENV PATH ${PATH}:${ANDROID_SDK_HOME}/tools:${ANDROID_SDK_HOME}/platform-tools:/opt/tools:${ANDROID_SDK_HOME}/tools/bin

RUN cd /opt/android-sdk && mkdir .android && touch .android/repositories.cfg

USER root
RUN apt-get clean
