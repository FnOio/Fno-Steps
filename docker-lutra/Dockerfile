FROM maven:3.3.3-jdk-8

RUN git clone https://gitlab.com/ottr/lutra/lutra.git /lutra \
  && cd lutra \
  && git checkout tags/v0.1.7 \
  && git submodule init \
  && git submodule update

RUN cd /lutra \
  && mvn install package -DskipTests
