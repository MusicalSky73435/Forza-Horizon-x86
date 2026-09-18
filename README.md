# Forza Horizon static recompilation

Run:  ./launch.sh

GAME DATA DEPENDENCY
This bundle contains only the recompiled executable and its support
libraries. The game's own assets are NOT included: launch.sh reads them
from the recomp suite's extracted data directory:

    <Where you put the game>/forza/assets

If that directory is moved or deleted the game will not start; re-extract
your legally-owned copy of the game there (see the suite's README), or
edit GAME_DATA in launch.sh.

Thanks to reXglue Team for their tool
