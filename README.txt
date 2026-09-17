forza — standalone native Linux build (statically recompiled Xbox 360 title)

Run:  ./launch.sh

GAME DATA DEPENDENCY
This bundle contains only the recompiled executable and its support
libraries. The game's own assets are NOT included: launch.sh reads them
from the recomp suite's extracted data directory:

    /home/flyinggoose/project/xbox360-ports/games/forza/extracted

If that directory is moved or deleted the game will not start; re-extract
your legally-owned copy of the game there (see the suite's README), or
edit GAME_DATA in launch.sh.

PRIVATE USE ONLY — this bundle embeds recompiled, copyrighted game code.
Do not upload or redistribute it.
