FROM alpine
RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk --no-cache update && apk --no-cache upgrade
RUN apk --no-cache add vips-dev@edge ffmpeg-dev@edge bash@edge 
ADD app.sh /app/
ADD tifig /usr/local/bin/
WORKDIR /app
CMD ["bash", "/app/app.sh"]

