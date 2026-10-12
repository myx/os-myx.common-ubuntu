# os-myx.common-ubuntu

The Ubuntu and Debian install entry point for `myx.common`. It carries no commands
of its own — all `myx.common` command logic, Linux implementations included, lives
in [os-myx.common](https://github.com/myx/os-myx.common).

## Requirements

- Ubuntu or Debian, and a root shell. The script stops with an error when it is not run as root.
- `curl`, and GNU `tar`: the unpack step uses `--wildcards`.
- Network access to `raw.githubusercontent.com` and `github.com`.

## Install

Run as root:

	curl -L https://raw.githubusercontent.com/myx/os-myx.common-ubuntu/master/sh-scripts/install-myx.common-ubuntu.sh | sh -e

Or, with no network access to this file, paste the script instead. Run this as
root, paste the whole script text, then press CTRL+D:

	sh -c 'eval "`cat`"'

The installer unpacks `os-myx.common` into `/usr/local/`, then sets
`/usr/local/bin/myx.common` and `/usr/local/share/myx.common/bin` to `root:adm`
mode 755.

## This script or the auto-detecting installer

Both unpack the same `os-myx.common` master tarball into `/usr/local/`.

- The [auto-detecting installer](https://github.com/myx/os-myx.common/blob/master/docs/installation.md) checks the OS first and picks its steps. On Linux it expects `apt`.
- This script runs the Ubuntu steps with no OS check.
- Run as root on an OS it does not recognise, the auto-detecting installer prints this script's command.

## Next step

	myx.common help

## Upgrade and uninstall

- Upgrade: run the install command again. It unpacks the current `master` over the installed files.
- Reinstall or uninstall with `myx.common` itself. See [Installation](https://github.com/myx/os-myx.common/blob/master/docs/installation.md).

## Related packages

- [os-myx.common](https://github.com/myx/os-myx.common) — the commands themselves.
- [os-myx.common-macosx](https://github.com/myx/os-myx.common-macosx) — macOS install script.
- [os-myx.common-freebsd](https://github.com/myx/os-myx.common-freebsd) — FreeBSD install script.
