# Stage 1 — build ffmpeg
FROM alpine:3.19 AS ffmpeg
RUN apk add --no-cache ffmpeg

# Stage 2 — n8n distroless
FROM n8nio/n8n:latest

USER root
COPY --from=ffmpeg /usr/bin/ffmpeg /usr/bin/ffmpeg
COPY --from=ffmpeg /usr/bin/ffprobe /usr/bin/ffprobe
USER node
