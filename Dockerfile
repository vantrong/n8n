# Image chính thức của n8n
FROM n8nio/n8n:latest

USER root

ENV N8N_USER_FOLDER=/home/node/.n8n

CMD sh -c '\
  mkdir -p "$N8N_USER_FOLDER" "${N8N_BINARY_DATA_FILE_SYSTEM_STORAGE_PATH:-/home/node/.n8n/binary_data}" && \
  chown -R node:node /home/node || true; \
  export N8N_PORT=${PORT:-5678}; \
  n8n start'
