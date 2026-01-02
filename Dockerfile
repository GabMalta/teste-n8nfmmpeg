
# Stage 2 — n8n distroless
FROM n8nio/n8n:2.0.2

USER root
RUN apk add --no-cache ffmpeg

USER node
