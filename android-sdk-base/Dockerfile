FROM azul/zulu-openjdk-debian:11

# Use UTF-8 locale
RUN apt-get -qq update
RUN apt-get -qqy install locales
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install depenendencies
RUN apt-get -qqy install \
lib32stdc++6 unzip wget expect git curl ssh tar gzip ca-certificates

# Download and unzip Android SDK
RUN wget -q https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip -O /opt/android-sdk.zip
RUN mkdir -p /opt/android-sdk/cmdline-tools
RUN unzip /opt/android-sdk.zip -d /opt/android-sdk/cmdline-tools
RUN rm -f /opt/android-sdk.zip
RUN mv /opt/android-sdk/cmdline-tools/cmdline-tools /opt/android-sdk/cmdline-tools/latest

ENV ANDROID_SDK_HOME /opt/android-sdk
ENV ANDROID_HOME /opt/android-sdk
ENV PATH ${PATH}:${ANDROID_SDK_HOME}/cmdline-tools/latest/bin

RUN apt-get clean
