# Dockerfile
FROM registry.access.redhat.com/rhel8:latest
RUN dnf install git python3 python3-devel ruby rubygems ruby-devel gcc-c++ redhat-rpm-config make -y
RUN gem install asciidoctor asciidoctor-diagram ascii_binder
COPY . $HOME/src/
RUN pip3 install pyyaml /src/aura.tar.gz
