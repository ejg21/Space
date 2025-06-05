FROM node:21.7.3

WORKDIR /app
COPY . .
RUN corepack enable && corepack prepare pnpm@latest --activate
RUN pnpm install
# Skipping pnpm build since it's not defined

CMD ["pnpm", "start"]
