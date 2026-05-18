#!/usr/bin/env bash
# Resets a worktree branch to the specified ref.
# Called by the tmux-handoff skill from the source worktree after the destination appears.
# Usage: set-base.sh <ref> <worktree-path>
#   <ref>           — branch name, tag, or commit (e.g. main, origin/main, v1.2.3)
#   <worktree-path> — absolute path to the destination worktree

set -euo pipefail

REF="${1:-}"
WORKTREE="${2:-}"

if [ -z "$REF" ] || [ -z "$WORKTREE" ]; then
  echo "Usage: set-base.sh <ref> <worktree-path>"
  exit 1
fi

# Fetch to make sure the ref is up to date (ignore failure for offline/no-remote cases)
git -C "$WORKTREE" fetch --quiet 2>/dev/null || true

git -C "$WORKTREE" reset --hard "$REF"
echo "Worktree base set to $REF ($(git -C "$WORKTREE" rev-parse --short HEAD))"
