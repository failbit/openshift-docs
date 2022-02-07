# Dockerfile
FROM registry.access.redhat.com/ubi8/ubi:latest
RUN dnf install git python3 python3-devel ruby rubygems ruby-devel gcc-c++ redhat-rpm-config make libtiff-devel libjpeg-devel openjpeg2-devel zlib-devel freetype-devel lcms2-devel libwebp-devel tcl-devel tk-devel harfbuzz-devel fribidi-devel libraqm-devel libimagequant-devel libxcb-devel -y
RUN gem install asciidoctor asciidoctor-diagram ascii_binder
COPY . $HOME/src/
RUN pip3 install pyyaml /src/aura.tar.gz
