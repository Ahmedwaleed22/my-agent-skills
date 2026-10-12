# my-skills

A small personal collection of agent skills (Claude Code, Codex, and other
`SKILL.md`-compatible agents). Each top-level folder is one skill.

None of these skills were written by me. They are collected here so they can
be installed together; all credit goes to the authors below.

## Skills

| Skill | What it does | Author | Source | License |
|---|---|---|---|---|
| [`apple-design`](apple-design) | Apple-style interface design and fluid, physical motion, translated for the web | Emil Kowalski | [emilkowalski/skills](https://github.com/emilkowalski/skills) | MIT |
| [`code-refactorer`](code-refactorer) | Behavior-preserving restructuring of frontend and backend code into clear layers | futrx | [futrx-com/futrx-skills](https://github.com/futrx-com/futrx-skills/tree/main/code-refactorer) | none stated |
| [`humanize-writing`](humanize-writing) | Rewrites stiff or generic prose to sound natural while preserving meaning | unknown | supplied as a zip, no author recorded | none stated |
| [`scalpel`](scalpel) | Standard operating procedure for codebase agents: rules, scenarios, and checklists | Harshil Anuwadia | [Harshil-Anuwadia/scalpel-sop](https://github.com/Harshil-Anuwadia/scalpel-sop) | MIT |
| [`ui-ux-pro-max`](ui-ux-pro-max) | Searchable UI/UX design intelligence: styles, palettes, font pairings, UX guidelines, stacks | Next Level Builder | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | MIT |

## Credits

- **apple-design** — © 2026 Emil Kowalski, MIT. The content is Emil Kowalski's
  `apple-design` skill, itself distilled from Apple's WWDC design talks
  (chiefly *Designing Fluid Interfaces*, WWDC 2018). The copy here is a
  repackaged variant: the original single `SKILL.md` is split into one file
  per section under `sections/`. Upstream license included as
  `apple-design/LICENSE`.
- **code-refactorer** — by futrx, from `futrx-com/futrx-skills` at commit
  `6d1401b`. Unmodified. The upstream repository states no license.
- **humanize-writing** — author unknown; it arrived as a packaged zip with no
  author or license information. Unmodified. If you wrote it, open an issue
  and it will be credited properly.
- **scalpel** — © 2026 Harshil Anuwadia, MIT, from
  `Harshil-Anuwadia/scalpel-sop` at commit `b4cdc3c`. Skill files are
  unmodified; the upstream README, landing page, and zip bundle are left out.
  Upstream license included as `scalpel/LICENSE`.
- **ui-ux-pro-max** — © 2024 Next Level Builder, MIT, from
  `nextlevelbuilder/ui-ux-pro-max-skill` v2.13.0 at commit `026b6e1`. One
  change: the search commands in `SKILL.md` call
  `python3 /workspace/.agents/skills/ui-ux-pro-max/scripts/search.py` instead
  of the upstream `${CLAUDE_PLUGIN_ROOT}` path, and the script's test folder
  is left out. Upstream license included as `ui-ux-pro-max/LICENSE`.

Each skill stays under its own author's terms. This repository adds no
license of its own over their work.

## Install

```bash
./install.sh                    # into /workspace/.agents/skills
./install.sh ~/.claude/skills   # into any other skills directory
```

The script only adds skills. It never deletes or overwrites what is already
in the target directory; a skill that already exists is skipped unless you
run it with `FORCE=1`.

If you install `ui-ux-pro-max` somewhere other than
`/workspace/.agents/skills`, update the script path in its `SKILL.md`.
