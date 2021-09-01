FROM serhuz/android-sdk-base:v2

ARG NDK_VERSION=21.4.7075529

RUN yes | sdkmanager --licenses
RUN sdkmanager "platform-tools" "platforms;android-31" "build-tools;31.0.0" "ndk;${NDK_VERSION}" "cmake;3.10.2.4988404"
RUN yes | sdkmanager --licenses

ENV ANDROID_NDK_HOME=${ANDROID_SDK_ROOT}/ndk/${NDK_VERSION}
ENV PATH ${PATH}:${ANDROID_SDK_ROOT}/tools:${ANDROID_SDK_ROOT}/platform-tools:${ANDROID_SDK_ROOT}/tools/bin

WORKDIR "/home/android"
VOLUME ["/home/android"]
