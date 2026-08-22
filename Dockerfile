# Stage 1 — build
FROM hugomods/hugo:latest AS build

WORKDIR /opt/HugoApp

# Copia só os manifests de dependência primeiro, pra cachear o node_modules entre builds
COPY package.json package-lock.json ./
RUN npm install --no-audit --no-fund

# Copia o restante do projeto e gera o site minificado
COPY . .
RUN hugo --minify

# Stage 2 — serve
FROM nginx:alpine
COPY --from=build /opt/HugoApp/public /usr/share/nginx/html
EXPOSE 80
