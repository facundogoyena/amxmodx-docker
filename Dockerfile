FROM steeb/steamos-32

# Configuration
ENV DEBIAN_FRONTEND noninteractive

# Dependencies
USER root
RUN apt-get update -qq && \
    apt-get install -y -qq --no-install-recommends \
    wget \
    unzip

# AMX Mod X
RUN useradd -m -r -N -d /amxmodx amxmodx

USER amxmodx
WORKDIR /amxmodx

RUN wget -q -O- "http://www.amxmodx.org/release/amxmodx-1.8.2-base-linux.tar.gz" | tar xz

WORKDIR /amxmodx/addons/amxmodx/
