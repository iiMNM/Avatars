FROM ghcr.io/gtsteffaniak/filebrowser:stable
USER root
RUN mkdir -p /folder /home/filebrowser/data && chown -R 1000:1000 /folder /home/filebrowser/data
COPY config.yaml /home/filebrowser/data/config.yaml
USER filebrowser
