FROM ubuntu:bionic

ARG TARGETPLATFORM

WORKDIR /

COPY install.sh /

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
        wget \
    && rm -rf /var/lib/apt/lists/*

RUN chmod +x install.sh && ./install.sh ${TARGETPLATFORM}

ENTRYPOINT ["sh"]



