#!/usr/bin/env bash
# Executar des de WSL. Publica només aquest treball i conserva la versió anterior.
set -euo pipefail
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SSH_KEY="${SSH_KEY:-$HOME/.ssh/id_rsa}"
REMOTE="ychen@ieticloudpro.ieti.cat"
SSH_PORT=20127
test -f "$SSH_KEY" || { echo "No s'ha trobat la clau privada: $SSH_KEY"; exit 1; }
ARCHIVE="$(mktemp /tmp/jay-chou-XXXXXX.tar.gz)"
trap 'rm -f "$ARCHIVE"' EXIT
tar -czf "$ARCHIVE" -C "$PROJECT_DIR" index.html musica.html historia.html concerts.html contacte.html css imatges docs CREDITS.md
SSH_OPTIONS=(-o BatchMode=yes -o IdentitiesOnly=yes -o StrictHostKeyChecking=yes -o UpdateHostKeys=no)
scp -O -i "$SSH_KEY" -P "$SSH_PORT" "${SSH_OPTIONS[@]}" "$ARCHIVE" "$REMOTE:/home/super/jay-chou-upload.tar.gz"
ssh -i "$SSH_KEY" -p "$SSH_PORT" "${SSH_OPTIONS[@]}" "$REMOTE" bash -s <<'REMOTE_SCRIPT'
set -euo pipefail
PUBLIC_ROOT=/home/super/nodejs_server/public
test -d "$PUBLIC_ROOT"
STAGE="$(mktemp -d "$PUBLIC_ROOT/jay-stage-XXXXXX")"
tar -xzf /home/super/jay-chou-upload.tar.gz -C "$STAGE"
test -f "$STAGE/index.html"
find "$STAGE" -type f -exec touch {} +
mkdir -p /home/super/deploy-backups
if [ -e "$PUBLIC_ROOT/jay-chou" ]; then
  mv "$PUBLIC_ROOT/jay-chou" "/home/super/deploy-backups/jay-chou-$(date +%Y%m%d-%H%M%S)"
fi
mv "$STAGE" "$PUBLIC_ROOT/jay-chou"
echo "Publicat: https://ychen.ieti.site/jay-chou/"
REMOTE_SCRIPT
