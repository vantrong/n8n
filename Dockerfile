# Image chính thức của n8n
FROM n8nio/n8n:latest

USER root

ENV N8N_HOST=0.0.0.0
ENV N8N_USER_FOLDER=/home/node/.n8n

# Quan trọng nhất: map PORT động của Railway -> N8N_PORT và start
CMD ["bash","-lc","export N8N_PORT=${PORT:-5678}; n8n start"]