#!/usr/bin/env bash
# Standalone launcher for forza — modified for bundled assets
set -u
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$HERE"

# Le dossier des données pointe maintenant sur le sous-dossier local "assets"
GAME_DATA="$HERE/assets"

if [ ! -d "$GAME_DATA" ]; then
  echo "ERROR: game data not found at $GAME_DATA"
  echo "Assurez-vous d'avoir copié les fichiers du jeu dans le dossier 'assets'."
  exit 1
fi

ulimit -c 0

env GDK_BACKEND=x11 LD_LIBRARY_PATH=. \
  ./forza --game_data_root="$GAME_DATA" --gpu_plugin xenos \
  --gpu_allow_invalid_fetch_constants=true --audio_maxqframes=64 --license_mask=1 \
  --headless=true \
   \
  "$@"
status=$?

# Nettoyage des segments de mémoire /dev/shm en cas de fermeture incomplète
pgrep -x "forza" >/dev/null 2>&1 || \
  find /dev/shm -maxdepth 1 -name 'xenia_memory_*' -user "$(id -un)" -delete 2>/dev/null
exit $status
