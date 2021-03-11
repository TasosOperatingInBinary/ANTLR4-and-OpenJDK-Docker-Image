FROM ubuntu:18.04

LABEL maintainer="apapadoi@csd.auth.gr"

RUN apt-get update \
    && apt-get -y install \
    && apt-get -y upgrade

# Install Java and JDK
# Default is OpenJDK
RUN apt install -y default-jre

RUN apt install -y default-jdk

# Install ANTLR4
WORKDIR /usr/local/lib

RUN apt install -y curl

RUN curl -O https://www.antlr.org/download/antlr-4.9-complete.jar

RUN echo "alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH" org.antlr.v4.Tool'" >> ~/.bashrc

RUN echo "alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'" >> ~/.bashrc

WORKDIR /usr/src/antlr

COPY ./src .

CMD export CLASSPATH=".:/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH" && bash