# Dockerfile
FROM registry.access.redhat.com/ubi8/ubi:latest
RUN dnf install git python3 python3-devel ruby rubygems -y
RUN gem install asciidoctor asciidoctor-diagram
COPY . $HOME/src/
RUN pip3 install pyyaml /src/aura.tar.gz
