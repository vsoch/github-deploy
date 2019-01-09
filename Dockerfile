FROM debian:stretch

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

LABEL "com.github.actions.name"="Deploy to Github Pages"
LABEL "com.github.actions.description"="Deploy list of files to Github Pages"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://www.github.com/vsoch/github-deploy"
LABEL "homepage"="https://www.github.com/vsoch/github-deploy"
LABEL "maintainer"="@vsoch"

RUN apt-get update && \
    apt-get install -y git && \
    mkdir -p /code

ADD . /code

RUN chmod u+x /code/deploy.sh
ENTRYPOINT ["/code/deploy.sh"]
