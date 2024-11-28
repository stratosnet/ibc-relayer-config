FROM informalsystems/hermes:1.10.4 as ibc-relayer

ARG CONFIG_FILE=empty.toml

RUN mkdir /home/hermes/.hermes

COPY ${CONFIG_FILE} /home/hermes/.hermes

RUN chown hermes:hermes /home/hermes/.hermes
VOLUME /home/hermes/.hermes

ENTRYPOINT []
