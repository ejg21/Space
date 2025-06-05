FROM node:21.7.3

WORKDIR /app
COPY . .
RUN corepack enable && corepack prepare pnpm@latest --activate
RUN pnpm install
RUN pnpm build

CMD ["pnpm", "start"]
