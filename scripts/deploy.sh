#!/usr/bin/env bash
# Publica a imagem do portfólio no GitHub Container Registry (GHCR).
#
# Uso: ./scripts/deploy.sh
#
# Segurança: o login usa o token do GitHub via `gh auth token` (nunca fica
# hardcoded aqui e nunca é salvo no repositório). O token precisa do escopo
# `write:packages`. O usuário (mpcabete) não é segredo.
set -euo pipefail

IMAGE="ghcr.io/mpcabete/portfolio:latest"

echo "==> Login no GHCR (token via gh CLI)"
gh auth token | docker login ghcr.io -u mpcabete --password-stdin

echo "==> Build da imagem: ${IMAGE}"
docker build -t "${IMAGE}" .

echo "==> Push da imagem"
docker push "${IMAGE}"

echo ""
echo "==> Concluído."
echo "    - Se a imagem for nova, ajuste a visibilidade (nasce privada):"
echo "      https://github.com/users/mpcabete/packages/container/portfolio/settings"
echo "    - No servidor: docker compose pull && docker compose up -d"
