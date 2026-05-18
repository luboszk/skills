# Skills

A collection of Claude Code skills — reusable agent capabilities that extend what Claude Code can do.

## What are skills?

Skills are installable extensions for [Claude Code](https://claude.ai/code) that add specialized commands and behaviors. Each skill lives in its own directory and can be invoked explicitly via a slash command.

## Skills

### tmux-handoff

Spin up a parallel Claude Code session in a new tmux pane or window, with its own git worktree and a focused handoff document as context. Useful for splitting off work mid-session — move files, target a specific base branch, and keep both sessions unblocked.

**Invoke with:** `/tmux-handoff <prompt>`

**Examples:**
```
/tmux-handoff work on the auth refactor from main
/tmux-handoff move src/utils/parser.py from main
/tmux-handoff feat/hotfix move api/rate_limit.py from main new window
```

## Installation

Install all skills from this repo:

```bash
npx skills add luboszk/skills
```

Install a specific skill:

```bash
npx skills add luboszk/skills/tmux-handoff
```

## Requirements

- [Claude Code](https://claude.ai/code)
- [Node.js](https://nodejs.org) (for `npx skills`)

## Contributing

Each skill lives in its own subdirectory with a `SKILL.md` and any supporting scripts. PRs welcome.
