FROM frolvlad/alpine-glibc

RUN apk add --update mercurial openssh-client && \
    apk info --purge

RUN addgroup developer && adduser developer -G developer -h /home/developer -D
USER developer
WORKDIR /home/developer/workspace

ENTRYPOINT ["hg"]

CMD ["--version"]
