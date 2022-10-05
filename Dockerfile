FROM ubuntu:jammy

LABEL maintainer="Yang Liu <yang.jace.liu@linux.com>"

RUN echo "/opt/calibre/lib" > /etc/ld.so.conf.d/calibre.conf && \
    apt update && \
    apt install --no-install-recommends -y curl xz-utils libopengl-dev ca-certificates python3-pip libglx0 libxkbcommon0 libfontconfig libegl1 && \
    curl -o calibre-bin.txz https://download.calibre-ebook.com/6.6.1/calibre-6.6.1-x86_64.txz && \
    mkdir -p /opt/calibre && \
    rm -rf /opt/calibre/* && \
    tar xvf calibre-bin.txz -C /opt/calibre && \
    ldconfig && \
    pip3 install pyqt6 && \
    /opt/calibre/calibre_postinstall && \
    rm -rf calibre-bin.txz && \
    mkdir /ebook-output

WORKDIR /ebook-output

ENTRYPOINT [ "/opt/calibre/bin/ebook-convert" ]