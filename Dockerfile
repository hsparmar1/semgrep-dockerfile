FROM agency-alpine-image
USER root
RUN groupadd hsparmar -g 1999 && \
    useradd -u 1500 -s /sbin/nologin -c "Docker image user" hsparmar
RUN dnf install -y vim

CMD ["echo I forgot to change to the non-root user: hsparmar."]
