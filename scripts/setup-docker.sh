#!/usr/bin/env bash
# Para no primeiro erro, inclusive erro dentro de pipe
set -euo pipefail

# Instala o Docker so se ainda nao existir
if ! command -v docker >/dev/null; then
  curl -fsSL https://get.docker.com | sh
fi

# Permite usar docker sem sudo com o usuario vagrant
usermod -aG docker vagrant

docker --version
