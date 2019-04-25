FROM ubuntu:latest
RUN apt-get update && apt-get install apt-utils -y && \ 
    apt-get install libssl-dev -y && \
    apt-get install build-essential -y && \
    apt-get install siege -y

COPY siege.conf /
ENTRYPOINT ["siege"]
