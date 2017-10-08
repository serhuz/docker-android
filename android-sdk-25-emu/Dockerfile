FROM serhuz/android-sdk-25

RUN yes | sdkmanager --licenses
RUN sdkmanager "emulator" "system-images;android-25;google_apis;armeabi-v7a"
RUN yes | sdkmanager --licenses

RUN mkdir /opt/avd
RUN echo no | avdmanager -v create avd -f -n test -k "system-images;android-25;google_apis;armeabi-v7a" --abi google_apis/armeabi-v7a -p /opt/avd

COPY ../scripts /opt/scripts
ENV PATH ${PATH}
RUN cd /opt/scripts && chmod +X *.sh

ENV PATH ${PATH}:${ANDROID_SDK_HOME}/emulator:/opt/scripts
