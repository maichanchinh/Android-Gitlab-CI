FROM ubuntu:17.04

MAINTAINER maichanchinhls, maichanchinhls@gmail.com

ENV ANDROID_SDK_HOME /opt/android-sdk-linux
ENV ANDROID_SDK_ROOT /opt/android-sdk-linux
ENV ANDROID_HOME /opt/android-sdk-linux
ENV ANDROID_SDK /opt/android-sdk-linux

# ------------------------------------------------------
# --- Install required tools
# Dependencies to execute Android builds
RUN apt-get update -qq \
    && apt-get install -y openjdk-8-jdk wget expect git curl unzip vim \
    && apt-get clean

RUN groupadd android && useradd -d /opt/android-sdk-linux -g android android

COPY sh /opt/tools

COPY licenses /opt/licenses

WORKDIR /opt/android-sdk-linux

RUN /opt/tools/entrypoint.sh built-in

CMD /opt/tools/entrypoint.sh built-in