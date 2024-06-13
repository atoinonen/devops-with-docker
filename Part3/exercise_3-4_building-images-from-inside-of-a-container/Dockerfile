FROM docker

WORKDIR ~

ENV DOCKER_USER="username"
ENV DOCKER_PWD="token"

COPY ./builder.sh .

ENTRYPOINT docker login -u $DOCKER_USER -p $DOCKER_PWD && ./builder.sh "$0" "$@"
