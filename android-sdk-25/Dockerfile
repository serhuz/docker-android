FROM serhuz/android-sdk-base:v2

RUN yes | sdkmanager --licenses
RUN sdkmanager "platform-tools" "platforms;android-25" "build-tools;25.0.3"
RUN yes | sdkmanager --licenses

ENV PATH ${PATH}:${ANDROID_SDK_HOME}/tools:${ANDROID_SDK_HOME}/platform-tools:${ANDROID_SDK_HOME}/tools/bin

WORKDIR "/home/android"
VOLUME ["/home/android"]
