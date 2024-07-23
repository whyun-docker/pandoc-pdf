FROM pandoc/core:latest-ubuntu
LABEL maintainer="yunnysunny@gmail.com"
RUN apt-get update && \
    apt-get --no-install-recommends install weasyprint fontconfig fonts-noto-cjk -y && \
    fc-cache -fv && \
    apt-get clean && \
    rm /var/lib/apt/lists/* -rf

