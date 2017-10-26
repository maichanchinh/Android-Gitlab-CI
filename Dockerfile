FROM ubuntu:17.04

MAINTAINER maichanchinhls, maichanchinhls@gmail.com

# ------------------------------------------------------
# --- Install required tools
# Dependencies to execute Android builds
RUN apt-get update -qq \
    && apt-get install -y openjdk-8-jdk wget expect git curl unzip vim \
    && apt-get clean
