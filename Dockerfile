FROM node:lts
RUN apt-get update && \
      apt-get -y install sudo
RUN curl -sL https://firebase.tools | bash

COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
