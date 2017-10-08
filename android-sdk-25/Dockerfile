FROM serhuz/android-sdk-base

RUN yes | sdkmanager --licenses
RUN sdkmanager "platform-tools" "platforms;android-25" "build-tools;25.0.3"
RUN yes | sdkmanager --licenses

WORKDIR "/home/android"
VOLUME ["/home/android"]
