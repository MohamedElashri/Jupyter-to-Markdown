FROM jgoldfar/pandoc-nbconvert-docker

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
