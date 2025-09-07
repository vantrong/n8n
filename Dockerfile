# Image chính thức của n8n
FROM n8nio/n8n:latest

USER root

ENV N8N_HOST=0.0.0.0
ENV N8N_USER_FOLDER=/home/node/.n8n

