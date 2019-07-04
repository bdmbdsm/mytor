FROM ubuntu:18.04
LABEL maintainer="bodik75@ukr.net"

ARG USER_ID
ARG GROUP_ID
ARG USERNAME=anon
ARG PROJECT_NAME=tordir
ARG TORRC_FILENAME=torrc
ENV ENV_TORRC_FILENAME=${TORRC_FILENAME}
ARG USER_HOME=/home/${USERNAME}
ARG PROJECT_DIR=${USER_HOME}/${PROJECT_NAME}

RUN apt update
RUN apt install -y tor locales

# install locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# create user with the same UID ang GID to avoid root escape
RUN useradd -ms /bin/sh --no-log-init -u ${USER_ID} ${USERNAME}
RUN groupmod -g ${GROUP_ID} ${USERNAME}

USER ${USERNAME}

WORKDIR ${PROJECT_DIR}

COPY ${TORRC_FILENAME} .

CMD tor -f ${ENV_TORRC_FILENAME}
