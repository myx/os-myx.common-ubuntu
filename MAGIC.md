# MAGIC.md — os-myx.common-ubuntu

Notes for maintainers. Users read [README.md](README.md).

## What this project is and is not

- An install entry point only. It never carries commands.
- Every `myx.common` command, the Linux variants included, lives in `os-myx.common` as `bin/<category>/<name>.Linux` or `.Common`. A new command goes there, never here.

## Where things live

- `sh-scripts/install-myx.common-ubuntu.sh` — the whole installer.
- `project.inf` — the distro declaration.
- The installed files come from the `os-myx.common` master tarball, not from this repo.

## Owner group: `root:adm`

- The script sets `/usr/local/bin/myx.common` and `/usr/local/share/myx.common/bin` to `root:adm`, mode 755.
- Ubuntu has no `wheel` group by default, so the BSD-style `root:wheel` of the FreeBSD and macOS scripts would fail here. `adm` exists by default on Ubuntu and Debian.
- The main installer, `os-myx.common/sh-scripts/install-myx.common.sh`, sets the same group for Linux with `apt`.

## Distro role

- `Requires: os-myx.common`. Selecting this project brings in `os-myx.common`.
- `Provides: os.any os.ubuntu`. All three OS siblings provide `os.any`. Only this one provides `os.ubuntu`.
- `deploy-export:` maps the install script to its raw GitHub URL, the one in the README.

## Gotchas

- The OS name differs by place: `ubuntu` in this project's name and provides, `Linux` in `uname -s` and in command variant suffixes.
- The unpack step depends on the layout of `os-myx.common`. It takes `**/host/tarball/*` and strips three path components. A move of `host/tarball/` in `os-myx.common` breaks this script.
- The `tar` flags are GNU `tar` syntax (`--wildcards`, `--strip-components=3`). The FreeBSD and macOS scripts use BSD `tar` syntax (`--include`). Do not copy a `tar` line from one sibling to another.
