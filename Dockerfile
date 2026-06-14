FROM devlikeapro/waha:latest

ENV HOST=0.0.0.0

EXPOSE 3000

USER root

RUN mkdir -p \
    /app/.wwebjs_auth \
    /app/.wwebjs_cache \
    /tmp/whatsapp-files && \
    chmod -R 777 /app /tmp/whatsapp-files

USER 1000