# Use the Plus image, as PostgreSQL storage is a Plus feature
FROM devlikeapro/waha:arm

ENV HOST=0.0.0.0
ENV PORT=7860
ENV WHATSAPP_API_PORT=7860

ENV CHROME_NO_SANDBOX=true
ENV CHROME_DISABLE_GPU=true

EXPOSE 7860

USER root

# You no longer need the /app/sessions directory since data goes to Neon,
# but WAHA might still need basic cache directories
RUN mkdir -p \
    /app/.wwebjs_auth \
    /app/.wwebjs_cache \
    /tmp/whatsapp-files && \
    chmod -R 777 /app /tmp/whatsapp-files

USER 1000