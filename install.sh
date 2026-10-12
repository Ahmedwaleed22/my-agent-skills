#!/usr/bin/env bash
# Copy the skills in this repo into a skills directory without touching
# anything else that is already there.
#
#   ./install.sh                      # -> /workspace/.agents/skills
#   ./install.sh ~/.claude/skills     # -> any other skills directory
#   FORCE=1 ./install.sh              # replace skills that already exist
set -euo pipefail

src="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dest="${1:-/workspace/.agents/skills}"
mkdir -p "$dest"

for skill in "$src"/*/; do
    name="$(basename "$skill")"
    [ -f "$skill/SKILL.md" ] || continue
    if [ -e "$dest/$name" ]; then
        if [ "${FORCE:-0}" != "1" ]; then
            echo "skip     $name (already installed; FORCE=1 to replace)"
            continue
        fi
        rm -rf "${dest:?}/$name"
    fi
    cp -r "$skill" "$dest/$name"
    echo "install  $name"
done
