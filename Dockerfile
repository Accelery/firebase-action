FROM node:lts

RUN curl -sL https://firebase.tools | bash

COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
