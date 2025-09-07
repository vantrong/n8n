# n8n on Railway with Dockerfile

This repo contains a minimal Dockerfile setup to deploy **n8n** on Railway with persistent volume support.

## Steps to use

1. Push this repo to your GitHub account.
2. In Railway, create a new project and select "Deploy from GitHub".
3. Attach a volume to `/home/node/.n8n`.
4. Add environment variables in Railway dashboard.

## Recommended Environment Variables

```
N8N_HOST=0.0.0.0
N8N_ENCRYPTION_KEY=your_long_random_key
N8N_DEFAULT_BINARY_DATA_MODE=filesystem
N8N_BINARY_DATA_FILE_SYSTEM_STORAGE_PATH=/home/node/.n8n/binary_data
N8N_EDITOR_BASE_URL=https://YOUR-SUBDOMAIN.up.railway.app/
WEBHOOK_TUNNEL_URL=https://YOUR-SUBDOMAIN.up.railway.app/
```

## Notes

- Workflows, credentials, and binary data are persisted on the attached volume.
- Make sure to set a strong `N8N_ENCRYPTION_KEY` and `N8N_BASIC_AUTH_*` for security.
