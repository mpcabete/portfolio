# Portfólio — Mateus Cabete

Site estático (Hugo, tema gruvbox) servido via Nginx em container.

## Build e publicação da imagem (GHCR)

A imagem Docker é construída localmente e publicada no GitHub Container
Registry (`ghcr.io/mpcabete/portfolio`).

```bash
./scripts/deploy.sh
```

O script:

1. Faz login no GHCR usando o token do GitHub (`gh auth token`).
2. Builda a imagem (`docker build`).
3. Envia para o GHCR (`docker push`).

> O token NUNCA é escrito no repositório. O login lê o token do `gh` em tempo
> de execução e o passa via stdin para o `docker login`. O único requisito é
> ter o `gh` autenticado com o escopo `write:packages`.

## Deploy no servidor

No servidor (a máquina fraca que só roda, sem buildar):

```bash
docker compose pull
docker compose up -d
```

O `docker-compose.yml` aponta para `ghcr.io/mpcabete/portfolio:latest`, então
ele só baixa a imagem pronta e sobe.

## Visibilidade da imagem

A imagem nasce **privada** no GHCR. Para o servidor puxar sem token, deixe-a
pública em:

<https://github.com/users/mpcabete/packages/container/portfolio/settings>
